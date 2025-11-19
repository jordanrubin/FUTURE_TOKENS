# Runeforge: Composable Reasoning Moves

Runeforge is a collection of small, composable reasoning patterns designed to enhance AI-assisted thinking. Each "move" captures a distinct cognitive operation—from generating antitheses to backchaining causal mechanisms to synthesizing new frames.

Part of the [FUTURE TOKENS](https://jordanmrubin.substack.com/p/future-tokens) project.

## Core Skills

The following reasoning moves are available. Each skill is self-contained with its own directory containing the full procedural definition and worked examples.

### Opposition & Testing

- **[antithesize](./antithesize/ANTITHESIZE.md)** — Generate standalone opposition to any proposition. Create rival theses, refutations, adversarial examples, or axiological inversions.
- **[counterfactual](./counterfactual/COUNTERFACTUAL.md)** — Explore what-if scenarios and alternative histories.
- **[extremify](./extremify/EXTREMIFY.md)** — Push concepts to their logical extremes to reveal hidden assumptions.
- **[stressify](./stressify/STRESSIFY.md)** — Stress-test ideas under extreme conditions.

### Exploration & Generation

- **[diverge](./diverge/DIVERGE.md)** — Expand search radius by generating orthogonal alternatives, analogies, and solution patterns.
- **[recombine](./recombine/RECOMBINE.md)** — Fuse distinct elements into novel hybrids.
- **[metaphorize](./metaphorize/METAPHORIZE.md)** — Map concepts to vivid metaphors that reveal structure.
- **[rhyme](./rhyme/RHYME.md)** — Find structural patterns and isomorphisms across domains.

### Causal Reasoning

- **[backchain](./backchain/BACKCHAIN.md)** — Work backward from effects to explore multiple plausible upstream mechanisms and drivers.
- **[simulate](./simulate/SIMULATE.md)** — Project forward through time to explore consequences and dynamics.

### Framing & Analysis

- **[excavate](./excavate/EXCAVATE.md)** — Dig beneath surface claims to expose deep assumptions and hidden premises.
- **[dimensionalize](./dimensionalize/DIMENSIONALIZE.md)** — Decompose concepts into underlying dimensions and axes.
- **[perspectivize](./perspectivize/PERSPECTIVIZE.md)** — Examine from multiple stakeholder viewpoints.
- **[evidence](./evidence/EVIDENCE.md)** — Evaluate and assess evidentiary support.

### Synthesis & Expression

- **[synthesize](./synthesize/SYNTHESIZE.md)** — Combine thesis and antithesis into novel higher-order frames.
- **[narrativize](./narrativize/NARRATIVIZE.md)** — Transform analysis into compelling narrative.
- **[judgmentize](./judgmentize/JUDGMENTIZE.md)** — Make principled evaluative judgments.

### Execution & Operationalization

- **[operationalize](./operationalize/OPERATIONALIZE.md)** — Convert abstract concepts into concrete, measurable operations.
- **[planify](./planify/PLANIFY.md)** — Generate actionable plans with clear steps and decision points.

### Specialized Moves

- **[confmax](./confmax/CONFMAX.md)** — Maximize confidence calibration and epistemic hygiene.
- **[question-gym](./question-gym/QUESTION-GYM.md)** — Practice and strengthen question generation.

## Using These Skills

Each skill directory contains:

- **Main skill file** (e.g., `ANTITHESIZE.md`) — Complete procedural definition including:
  - When to use the skill
  - Step-by-step process
  - Quality criteria
  - Common failure modes
  - Integration with other skills

- **exemplars.md** — Worked examples demonstrating the skill in action without requiring full context

## Philosophy

These skills embody several principles:

1. **Composability** — Skills can be chained and combined
2. **Explicitness** — Each move has clear mechanics, not just vibes
3. **Epistemic hygiene** — Built-in uncertainty tracking and failure mode awareness
4. **Context efficiency** — Designed to minimize token waste while maximizing insight

## Repository Structure

```
runeforge/
  SKILL.md              ← You are here
  antithesize/
    ANTITHESIZE.md      ← Full procedural body
    exemplars.md        ← Worked examples
  backchain/
    BACKCHAIN.md
    exemplars.md
  [... etc for each move]
  archive/              ← Deprecated or experimental prompts
```

## Contributing

Skills start as experiments and are refined through use. The archive folder contains earlier explorations that may be revived or recombined into new patterns.

---

For the broader vision, see the [FUTURE TOKENS Substack](https://jordanmrubin.substack.com/p/future-tokens).
