---
name: future-tokens
description: Future Tokens is a collection of small, composable reasoning patterns designed to enhance AI-assisted thinking. Each "move" captures a distinct cognitive operation—from generating antitheses to mapping metaphors to dimensionalizing complex decisions.
---

# Future Tokens: Composable Reasoning Moves

Future Tokens is a collection of small, composable reasoning patterns designed to enhance AI-assisted thinking. Each "move" captures a distinct cognitive operation—from generating antitheses to mapping metaphors to dimensionalizing complex decisions.

Part of the [FUTURE TOKENS](https://jordanmrubin.substack.com/p/future-tokens) project.

## Core Skills

The following reasoning moves are available. Each skill is self-contained with its own directory containing the full procedural definition and worked examples.

- **[antithesize](./antithesize/ANTITHESIZE.md)** — Generate standalone opposition to any proposition. Antithesis must be comprehensible without reading thesis—it's an alternative complete worldview, not refutation.
- **[excavate](./excavate/EXCAVATE.md)** — Perform assumption archaeology. Reveal the layered structure of "what must be true" beneath a claim, plan, belief, or principle. The goal is to surface implicit premises, map dependencies, identify cruxes, and expose where disagreement or uncertainty actually lives. Unlike attack (looking for breakage) or antithesize (generating opposition), excavate is diagnostic. It lights up the skeleton beneath the stance.
- **[dimensionalize](./dimensionalize/DIMENSIONALIZE.md)** — Transform complex decisions or systems into 3-7 measurable dimensions that score high on fidelity (validity+stability), leverage (actionability+impact), and low on complexity (cognitive load+overfitting). Use when facing multi-factor choices, analyzing systems, or comparing non-obvious options.
- **[handlize](./handlize/HANDLIZE.md)** — Extract the executable residue from an argument or map by isolating handles—concepts with operational grip—while discarding rhetorical mass. Answers: "what here could actually change what I do?" Not summary, not critique—just residue extraction.
- **[inductify](./inductify/INDUCTIFY.md)** — Extract non-obvious structural commonalities across multiple substantial examples. Identify latent mechanisms, shared constraint-structures, and pattern families with predictive slack rather than surface vibes. Heavy induction: decomposing each case, cross-referencing mechanisms, and stress-testing emergent generalizations.
- **[metaphorize](./metaphorize/METAPHORIZE.md)** — Build explicit, high-coverage mapping from familiar source domain onto target domain to systematically port rules, heuristics, formulas, and metrics. Heavier than rhyme, lighter than formal proof. When source has math, carry the math with units and dimensional analysis.
- **[negspace](./negspace/NEGSPACE.md)** — Detect the argument, conclusion, or premise that *should* be present given the statistical structure of the text, but is conspicuously absent. Reads the "shadow" of the text by comparing what was written to what was overwhelmingly likely to be written next, revealing hidden content via information asymmetry.
- **[rhetoricize](./rhetoricize/RHETORICIZE.md)** — Extract rhetorical skeleton + fact ledger, then map the "spin-space" around an argument by applying controlled connotation and syntax transforms across multiple passes. Ranks variants by rhetorical surprise and surfaces the hidden fulcrum words and grammatical moves that do the persuasive work. Diagnostic, not generative.
- **[rhyme](./rhyme/RHYME.md)** — Fast structural similarity detection that maps novel inputs onto known patterns through echo recognition. Use for understanding unfamiliar domains, creative seeding, intuition framing, or finding parallel structures across different contexts. Upstream move before metaphor or detailed mapping.
- **[synthesize](./synthesize/SYNTHESIZE.md)** — Compress conflicting positions into decision-sufficient generative frame with explicit distortion tracking. Produces tiered outputs (quick/medium/deep), tracks what was dropped, and validates via round-trip testing. Use when thesis + antithesis exist and you need portable framework that explains both while generating novel predictions.

## Using These Skills

Each skill directory contains:

- **SKILL.md** — Symlink to the main skill file (for marketplace compatibility)
- **Main skill file** (e.g., `ANTITHESIZE.md`) — Complete procedural definition including:
  - When to use the skill
  - Step-by-step process
  - Quality criteria
  - Common failure modes
  - Integration with other skills
  - Worked examples embedded throughout

## Philosophy

These skills embody several principles:

1. **Composability** — Skills can be chained and combined
2. **Explicitness** — Each move has clear mechanics, not just vibes
3. **Epistemic hygiene** — Built-in uncertainty tracking and failure mode awareness
4. **Context efficiency** — Designed to minimize token waste while maximizing insight
5. **Clear attribution** — Maintain distinctions between three entities in any assessment context:
   - **The user** — who requests the analysis or reasoning move
   - **The author(s)** — whose content, claims, or work is being assessed
   - **Claude** — who performs the reasoning operation and generates outputs

   Never misattribute Claude's outputs to the author or user. Never misattribute the author's positions to the user. Keep the three roles distinct throughout all operations.

## Repository Structure

```
Future Tokens/
  install.sh            ← One-line installer for agents
  SKILL.md              ← You are here
  LICENSE               ← CC BY 4.0 license
  TRADEMARK.md          ← Trademark usage guidelines
  .claude-plugin/       ← Marketplace configuration
    marketplace.json
  antithesize/
    SKILL.md            ← Symlink to ANTITHESIZE.md
    ANTITHESIZE.md      ← Full procedural body
  dimensionalize/
    SKILL.md → DIMENSIONALIZE.md
  excavate/
    SKILL.md → EXCAVATE.md
  ...
```

## Contributing

Skills start as experiments and are refined through use.

---

For the broader vision, see the [FUTURE TOKENS Substack](https://jordanmrubin.substack.com/p/future-tokens).
