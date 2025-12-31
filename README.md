# Future Tokens

Future Tokens collects small, composable reasoning moves that can be reused as building blocks for AI-assisted thinking. Each skill captures a distinct cognitive operation in a clear, executable format.

This repository is formatted as a [Claude Skills](https://support.claude.com/en/articles/12512176-what-are-skills) skillset, allowing for seamless integration with Claude's capabilities.

See the [FUTURE TOKENS Substack](https://jordanmrubin.substack.com/p/future-tokens) for the broader mission and philosophy.

## Installation

To install and use this skillset in Claude:

1. **Download the Skillset**: Download this repository as a ZIP file (or clone it if you prefer).

2. **Access Claude Settings**: 
   - Navigate to `Settings` > `Capabilities` within Claude
   - Ensure that "Code execution and file creation" is enabled
   - Upgrade to Pro or higher (Skills are paid features; note I have no relationship with Anthropic)

3. **Upload the Skillset**:
   - In the "Skills" section, click on "Upload skill"
   - Select the downloaded ZIP file (or the repository folder) to upload

4. **Activate the Skillset**: Once uploaded, the skillset will appear in your list of skills. Toggle it on to activate.

For more detailed information on using and managing skills in Claude, refer to the [Using Skills in Claude](https://support.claude.com/en/articles/12512180-using-skills-in-claude) guide.

## Quick Start

→ **[SKILL.md](./SKILL.md)** — Master index of all available reasoning moves

Each skill lives in its own directory with:
- A main procedural definition (e.g., `ANTITHESIZE.md`)
- Worked examples embedded throughout

## Repository Structure

```
Future Tokens/
  SKILL.md              ← Master index and skill catalog
  LICENSE               ← CC BY 4.0 license
  TRADEMARK.md          ← Trademark usage guidelines
  antithesize/          ← Each skill in its own folder
    ANTITHESIZE.md      ← Full procedural definition
  dimensionalize/
    DIMENSIONALIZE.md
  excavate/
    EXCAVATE.md
  handlize/
    HANDLIZE.md
  inductify/
    INDUCTIFY.md
  metaphorize/
    METAPHORIZE.md
  negspace/
    NEGSPACE.md
  rhetoricize/
    RHETORICIZE.md
  rhyme/
    RHYME.md
  synthesize/
    SYNTHESIZE.md
```

Skills include opposition techniques (antithesize), framing and analysis (excavate, dimensionalize, negspace, rhetoricize), pattern extraction (inductify), exploration (metaphorize, rhyme), executable residue extraction (handlize), and integration (synthesize).

## Contributing

New reasoning patterns should be added as directories following the established structure. See [SKILL.md](./SKILL.md) for the complete catalog and philosophy.

## Disclaimer

The reasoning patterns, prompts, and outputs generated using this library are provided for informational and educational purposes only. No content from this library should be construed as advice from Jordan Rubin, including but not limited to investment advice, legal advice, medical advice, or professional advice of any kind. Users are responsible for their own decisions and should consult appropriate professionals for specific advice.
