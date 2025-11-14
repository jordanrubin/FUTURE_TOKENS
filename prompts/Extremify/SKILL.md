---
name: extremify
description: Stress-test claims by constructing extreme versions along chosen axes—either bidirectional (both extremes on one axis) or multi-axis sweep (one extreme per axis, consistent valence). Use when user asks to "extremify", needs to test claim robustness, wants to find hidden assumptions or failure modes, asks "what if we pushed this to the limit", or needs to see reductio ad absurdum.
---

# extremify

## tl;dr

construct extreme version(s) of a claim—either both directions on one axis, or one extreme across multiple axes—to surface hidden assumptions and failure modes. inverse of steelmanning: intentional strawman(s) to map brittleness.

## when to use

- user says "extremify", "stress-test", "push to the limit"
- testing claim robustness or finding hidden assumptions
- discovering failure modes across different dimensions

**mode selection:**
- **single_axis (bidirectional)**: when claim has natural spectrum and you want to find goldilocks zone
- **multi_axis (sweep)**: when claim is multifaceted and you want to discover which dimensions matter most

## interface

```
input:
  claim: string           # assertion to extremify
  mode: enum              # "single_axis" or "multi_axis"
  axes: [string]          # single axis for bidirectional, or 2-4 axes for sweep
  guardrails?: string[]   # constraints that survive extremification

output (single_axis):
  axis: string
  extreme_max: string     # claim pushed to maximum on axis
  extreme_min: string     # claim pushed to minimum on axis
  tension_surface: string # where extremes meet, phase transition

output (multi_axis):
  extremes: [
    { axis, direction, extreme_version }
  ]
  cross_axis_view: string # which dimensions matter, where they conflict
```

## axes (choose ONE)

| axis | dial toward |
|------|-------------|
| **logical** | absurdly strong/weak premises |
| **emotional** | panic/euphoria response |
| **cost** | ruinous expense / zero budget |
| **risk** | certain disaster / impossible safety |
| **time** | glacial / instant |
| **reputational** | career-ending / universally beloved |
| **scale** | one person / entire planet |
| **tone** | maximally abrasive / maximally obsequious |
| **advocate** | worst possible advocate / most credible champion |

## protocol

### 1. anchor
- restate claim verbatim
- choose mode: single_axis (bidirectional) or multi_axis (sweep)
- select axis/axes that actually apply to the claim
- flag guardrails that must hold

### 2. extremify

**single_axis mode (bidirectional):**
- construct TWO extreme versions of the claim
- maximize on axis (make maximally desirable/undesirable)
- minimize on axis (opposite extreme)
- identify tension surface: where do extremes meet? what's the goldilocks zone?

**multi_axis mode (sweep):**
- construct ONE extreme per axis (2-4 axes recommended)
- **maintain consistent valence**: all extremes should push same direction (usually toward making claim look bad/absurd)
- pick axes where extremification actually reveals something (avoid forcing irrelevant dimensions)
- generate extreme_version for each axis independently
- identify cross-axis patterns: which dimensions matter most? where do they conflict?

**invariants for both modes:**
- remove nuance on chosen axis only
- maintain internal consistency
- DO NOT introduce new variables outside the axis
- DO NOT invent costs/constraints that don't exist
- this is inverse of steelmanning—intentional strawman(s)

### 3. done
- no synthesis steps here
- extremes stand alone as inputs for later analysis
- user can feed into dimensionalize, antithesize, or other synthesis moves

## invariants

**MUST:**
- preserve all premises not on chosen axis/axes
- label which direction(s) you pushed
- maintain internal consistency within each extreme

**MUST NOT:**
- change axis mid-construction
- smuggle in unrelated variables
- choose theatrics over insight

## failure modes

| antipattern | symptom | fix |
|-------------|---------|-----|
| **edgelord theater** | vivid but uninformative | demand concrete failure modes |
| **axis creep** | cost becomes reputational becomes time | strict axis discipline |
| **premise injection** | new assumptions appear in extreme | diff original vs extreme |
| **mode confusion** | mixing bidirectional + sweep patterns | pick one mode, execute cleanly |
| **invented costs** | claiming time/money costs that don't exist | only extremify dimensions that actually apply |
| **valence mixing** | multi-axis extremes point different directions | maintain consistent valence across axes |

## examples

### ex1: single_axis mode (scope, bidirectional)

```yaml
claim: "extremify is useful"
mode: single_axis
axis: scope
guardrails: ["must remain coherent", "user has access to skill"]

extreme_max: |
  "extremify is ESSENTIAL for ALL thinking—every claim, every conversation, 
  every decision MUST be extremified before any action. casual dinner plans? 
  extremify cost, time, reputational. morning coffee? extremify emotional, 
  logical, risk. NO thought escapes extremification—anything less is 
  intellectual malpractice."

extreme_min: |
  "extremify is USELESS—a cumbersome protocol that adds zero value over 
  'what breaks this?' heuristic. every axis is theatre, every extreme is 
  obvious in hindsight, the structured output is pure ceremony with no 
  epistemic gain. just think about edge cases normally."

tension_surface: |
  extremes meet at: decision stakes justify structured analysis vs informal 
  edge-case reasoning sufficient. goldilocks zone likely at high-stakes 
  decisions (>$10k, >40h impact) where hidden conditionals exist and 
  breakpoints need to be explicit/shareable.
```

### ex2: multi_axis mode (consistent valence)

```yaml
claim: "extremify is useful"
mode: multi_axis
axes: [scope, fragility, dependency]
guardrails: ["must remain coherent"]

extremes:
  - axis: scope
    extreme_version: |
      "extremify ONLY works for one hyper-specific case: complex 
      multifaceted claims where informal edge-case reasoning already failed, 
      stakes justify structured analysis, and you need shareable artifacts. 
      outside this needle-thin band it's pure ceremony."
  
  - axis: fragility
    extreme_version: |
      "extremify breaks IMMEDIATELY if: user picks wrong axis, mixes modes 
      mid-run, lets axis creep happen, introduces new premises, chooses 
      theater over insight, confuses extremes with conclusions. SO many 
      failure modes that execution is impossibly brittle."
  
  - axis: dependency
    extreme_version: |
      "extremify creates TOTAL reliance on protocol—users lose ability to 
      think about edge cases naturally, can't reason without scaffolding, 
      need formal structure for every stress-test, become helpless without 
      yaml templates and axis lists."

cross_axis_view: |
  all extremes push same direction (making extremify look bad). scope says 
  "rarely applicable", fragility says "easy to mess up", dependency says 
  "creates learned helplessness". together: move is niche, brittle, and 
  potentially makes users worse at thinking. note: avoided inventing costs 
  (time/money) that don't actually apply to this cognitive move.
```

### ex3: single_axis mode (cost, bidirectional)

```yaml
claim: "switching to remote work saves money"
mode: single_axis
axis: cost
guardrails: ["legal", "preserve team"]

extreme_max: |
  "switching to remote work REQUIRES enterprise security ($40k/yr), 
  professional home offices ($15k × 8 = $120k), coworking memberships 
  ($600/mo × 8 = $57k/yr), quarterly offsites ($25k × 4 = $100k/yr), 
  expanded tooling ($8k/yr), 15% coordination tax on salaries—totaling 
  $350k/yr vs $180k office lease, nearly DOUBLING costs."

extreme_min: |
  "switching to remote work costs NOTHING—cancel office lease ($180k/yr 
  savings), employees use personal equipment, free Zoom tier, async-only 
  communication (zero meeting costs), no security beyond VPN. team works 
  from cafes and libraries. pure profit."

tension_surface: |
  extremes meet at: what gets unbundled from office lease? coordination, 
  security, culture maintenance all have costs when distributed. goldilocks 
  likely depends on team size (≤5 saves money, 5-10 breaks even, 10+ costs 
  more) and security requirements.
```

## integration notes

**chains well with:**
- `dimensionalize` (use multi_axis extremify to test each dimension)
- `antithesize` (extremes become dialectic poles)
- synthesis moves (extremes are inputs, not outputs)

**typical workflow:**
```
user: "i think we should raise series A now"
claude: [dimensionalize: time, cost, risk, dilution]
user: "extremify on risk, cost, dilution"
claude: [multi_axis mode, generates 3 extremes]
user: "now synthesize"
claude: [uses extremes as inputs for synthesis move]
```

**mode selection heuristics:**
- use **single_axis** when: claim has natural spectrum, want goldilocks zone
- use **multi_axis** when: claim is complex, want to discover critical dimensions

## meta

**why this works:**
- inverse of steelmanning—intentional strawman(s)
- like extremophile bacteria: thrives in hostile conditions on chosen axis/axes
- inverse match filter: removes nuance, amplifies maximally disruptive elements
- bidirectional mode maps the viable range
- multi-axis mode discovers which dimensions actually matter
- extremes are synthesis inputs, not final outputs
- consistent valence in multi-axis mode prevents confusion

**why it fails:**
- wrong mode for claim structure (bidirectional for multifaceted claim)
- too many axes (>4 creates noise)
- forcing axes that don't apply (inventing fake costs/constraints)
- mixing valence (some extremes make claim look good, others bad)
- extreme underspecified (fix: demand concrete examples)
- treating extremes as conclusions rather than inputs

---

*like extremophile bacteria thriving in hostile conditions—this skill takes claims to environments where only the load-bearing assumptions survive. you're not doomscrolling; you're stress-testing the foundations.*
