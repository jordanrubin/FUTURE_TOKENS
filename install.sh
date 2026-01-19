#!/usr/bin/env bash
#
# Future Tokens Skills Installer
# Installs reasoning skills for Claude Code
#
# Usage:
#   curl -sL https://raw.githubusercontent.com/jordanrubin/FUTURE_TOKENS/main/install.sh | bash
#
# Or if you've cloned the repo:
#   ./install.sh
#

set -euo pipefail

REPO_URL="https://github.com/jordanrubin/FUTURE_TOKENS"
SKILLS_DIR="$HOME/.claude/skills"
COMMANDS_DIR="$HOME/.claude/commands"
TEMP_DIR=""

# Colors (if terminal supports them)
if [[ -t 1 ]]; then
    GREEN='\033[0;32m'
    YELLOW='\033[0;33m'
    RED='\033[0;31m'
    BOLD='\033[1m'
    NC='\033[0m'
else
    GREEN=''
    YELLOW=''
    RED=''
    BOLD=''
    NC=''
fi

info() { echo -e "${GREEN}→${NC} $1" >&2; }
warn() { echo -e "${YELLOW}⚠${NC} $1"; }
error() { echo -e "${RED}✗${NC} $1" >&2; }
success() { echo -e "${GREEN}✓${NC} $1"; }

cleanup() {
    if [[ -n "$TEMP_DIR" && -d "$TEMP_DIR" ]]; then
        rm -rf "$TEMP_DIR"
    fi
}

trap cleanup EXIT

# Determine source directory (local clone or download)
get_source_dir() {
    local script_dir
    script_dir="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"

    # Check if we're in a local clone (has skill directories)
    if [[ -d "$script_dir/antithesize" ]]; then
        echo "$script_dir"
        return 0
    fi

    # Otherwise, download from GitHub
    echo "→ Downloading skills from GitHub..." >&2
    TEMP_DIR=$(mktemp -d)

    if command -v curl &>/dev/null; then
        curl -sL "$REPO_URL/archive/refs/heads/main.tar.gz" | tar -xz -C "$TEMP_DIR" --strip-components=1
    elif command -v wget &>/dev/null; then
        wget -qO- "$REPO_URL/archive/refs/heads/main.tar.gz" | tar -xz -C "$TEMP_DIR" --strip-components=1
    else
        error "Neither curl nor wget found. Please install one of them."
        exit 1
    fi

    echo "$TEMP_DIR"
}

install_skill() {
    local skill_dir="$1"
    local skill_name
    skill_name=$(basename "$skill_dir")

    # Find the skill file (uppercase name .md)
    local skill_file
    skill_file=$(find "$skill_dir" -maxdepth 1 -name "*.md" -type f | head -1)

    if [[ -z "$skill_file" ]]; then
        warn "No .md file found in $skill_name, skipping"
        return 1
    fi

    local target_dir="$SKILLS_DIR/$skill_name"
    local target_file="$target_dir/SKILL.md"

    mkdir -p "$target_dir"
    cp "$skill_file" "$target_file"

    success "Installed $skill_name"
    return 0
}

install_command() {
    local skill_dir="$1"
    local skill_name
    skill_name=$(basename "$skill_dir")

    # Find the skill file to extract description
    local skill_file
    skill_file=$(find "$skill_dir" -maxdepth 1 -name "*.md" -type f | head -1)

    if [[ -z "$skill_file" ]]; then
        return 1
    fi

    # Extract description from YAML frontmatter
    local description
    description=$(sed -n '/^---$/,/^---$/p' "$skill_file" | grep "^description:" | sed 's/^description: *//' | head -1)

    if [[ -z "$description" ]]; then
        description="Apply the $skill_name reasoning skill"
    fi

    local target_file="$COMMANDS_DIR/$skill_name.md"

    cat > "$target_file" << EOF
---
description: $description
---

Apply the $skill_name skill to analyze: \$ARGUMENTS
EOF

    return 0
}

main() {
    echo -e "${BOLD}Future Tokens Skills Installer${NC}"
    echo "Installing reasoning skills for Claude Code"
    echo ""

    # Get source directory
    local source_dir
    source_dir=$(get_source_dir)

    if [[ ! -d "$source_dir" ]]; then
        error "Could not find skills directory"
        exit 1
    fi

    # Create directories
    mkdir -p "$SKILLS_DIR"
    mkdir -p "$COMMANDS_DIR"

    # Count skills
    local total=0
    local installed=0

    # Install each skill and command (skip non-skill directories)
    for skill_dir in "$source_dir"/*/; do
        [[ -d "$skill_dir" ]] || continue
        # Skip if no .md file (not a skill directory)
        [[ -n "$(find "$skill_dir" -maxdepth 1 -name "*.md" -type f 2>/dev/null)" ]] || continue
        ((total++)) || true
        if install_skill "$skill_dir"; then
            install_command "$skill_dir"
            ((installed++)) || true
        fi
    done

    echo ""
    if [[ $installed -gt 0 ]]; then
        success "Installed $installed skills + commands"
        echo ""
        echo "  Skills:   $SKILLS_DIR"
        echo "  Commands: $COMMANDS_DIR"
        echo ""
        echo -e "${BOLD}Next steps:${NC}"
        echo "  1. Restart Claude Code to load the new skills"
        echo "  2. Use /skillname to invoke explicitly, or let Claude auto-detect"
        echo ""
        echo "Available commands:"
        ls -1 "$COMMANDS_DIR" | sed 's/\.md$//' | sed 's/^/  \//'
    else
        warn "No skills were installed"
        exit 1
    fi
}

main "$@"
