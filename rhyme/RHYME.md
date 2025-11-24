---
name: rhyme
description: Fast structural similarity detection that maps novel inputs onto known patterns through echo recognition. Use for understanding unfamiliar domains, creative seeding, intuition framing, or finding parallel structures across different contexts. Upstream move before metaphor or detailed mapping.
---

# Rhyme

## Overview

**Rhyme** is fast structural similarity. It maps a novel input onto known patterns by echo, not deduction. The match may be visual, narrative, functional, or systemic—but it *feels* alike. Not true, not proven—just salient.

Rhyme is upstream of metaphor. It clusters, suggests, frames. Nothing more—but often the first real foothold.

Claude should use this Skill when the user:
- Explicitly asks to "rhyme" something
- Seeks structural parallels or analogies
- Wants to understand an unfamiliar domain through pattern matching
- Needs creative seeding across domains
- Says "what's this like?" or "remind me of..."
- Wants to bootstrap intuition about a new system

## How It Runs (~1-3s cognitive time)

1. **Register A** – Snapshot the input pattern or system
2. **Scan memory** – Passive recall of matching structures  
3. **Note shared features** – Form, role, sequence, function
4. **Tag A ↔ B** – Save as active candidate for further analysis

This is pre-analytical pattern matching, not rigorous mapping.

## Rhyme Tropes

Common pattern categories that trigger rhyme:

### Visual Motifs
Spirals, cascades, symmetries, recursions, fractals, waves

### Narrative Arcs  
Fall-from-grace, double agent, forbidden loop, hero's journey, tragedy of commons

### Role Dynamics
Scapegoat, saboteur, empty throne, gatekeeper, facilitator, bottleneck

### Formal Patterns
ABBA, edge→core→edge, nested loops, call-and-response

### Process Analogs
Bottlenecked pipeline, open-loop feedback, stochastic search, filtering cascade

### Systemic Frames
- Immune response ↔ infosec
- Political alliance ↔ economic cartel  
- Market panic ↔ stampede
- Evolutionary adaptation ↔ A/B testing
- River delta ↔ organizational structure

These act as rhyme scaffolds, even across domains.

## Parameters

| Knob | Range / Values | Effect |
|------|----------------|--------|
| **tightness** | loose → strict | How many shared features needed to register a rhyme |
| **scope** | local → systemic | Whether rhyme is within elements or across processes |
| **breadth** | narrow (1-2 matches) → wide (many candidates) | How many rhymes held in working memory |
| **depth** | surface feature → underlying structure | How abstract the match can be |
| **agenda** | neutral / goal-tuned | Constrain activation by current objective |

**Example tuning:**
- Understanding new domain: loose tightness, wide breadth, systemic scope
- Validation checking: strict tightness, narrow breadth, structural depth
- Creative brainstorming: loose tightness, wide breadth, surface-to-deep range

## Dimensionalization of Rhyme Quality

Score each rhyme candidate on these dimensions (0.0 → 1.0):

### 1. Parallel Density
How many concrete overlaps (not vibes) can you name?
- **0.0** = 1 cute overlap
- **0.5** = ≥2 structural + ≥1 functional
- **1.0** = ≥3 structural + ≥2 functional, independently checkable

### 2. Source Maturity  
Is the source domain well-mapped (canon, playbooks, failure literature)?
- **0.0** = Folk wisdom only
- **0.5** = Partial standards, scattered case studies
- **1.0** = Codified heuristics + known traps + metrics

### 3. Operator Expertise (Error-Spotting)
Do you know the source deeply enough to catch leaks?
- **0.0** = Tourist
- **0.5** = Competent user
- **1.0** = Can name edge cases & anti-patterns on demand

### 4. Transfer Leverage
How much working know-how could port if the rhyme holds?
- **0.0** = Decorative frame
- **0.5** = A couple of useful rules
- **1.0** = A compact playbook you can run tomorrow

### 5. Invariants Salience
Are the shared bits causal/transformational, not ornaments?
- **0.0** = Motif only (spirals, masks)
- **0.5** = Roles/flows line up
- **1.0** = Core constraints & transforms align (queues, budgets, feedbacks)

### 6. Exclusion Clarity (Leak-Proofing)
Can you crisply list what doesn't port?
- **0.0** = Hand-wavy "obviously not everything"
- **0.5** = A few do-not-ports
- **1.0** = Explicit exclusion set that would catch most dumb misuses

### 7. Communicability
Can you explain the rhyme in 2-4 bullets to a smart outsider?
- **0.0** = Requires a TED talk
- **0.5** = Intelligible with a diagram
- **1.0** = Lands in 20 seconds, no table needed

### 8. Measurability
Are there observable proxies to test the rhyme quickly?
- **0.0** = Pure vibes
- **0.5** = Qualitative spot-checks
- **1.0** = Leading indicators/metrics exist or are easy to stub

### 9. Time-Scale Alignment
Do the dynamics rhyme on timescale (latency, cadence, decay)?
- **0.0** = Mismatch (days vs microseconds)
- **0.5** = Can be rescaled with care
- **1.0** = Native alignment or trivial rescaling

### 10. Composability
Does the rhyme play nicely with other rhymes/maps?
- **0.0** = Conflicts with your existing frames
- **0.5** = Orthogonal
- **1.0** = Plugs into a larger scaffold (becomes a module)

### 11. Novelty (Anti-Cliché)
Is it fresh enough to cut new affordances, not generic poster talk?
- **0.0** = "Business is war" tier
- **0.5** = Familiar but specific
- **1.0** = Crisp, surprising, and helpful

**Quality threshold:** Strong rhymes score ≥0.6 on parallel density, source maturity, transfer leverage, and invariants salience.

## Output Format

For each rhyme candidate, provide:
```
**[Source Domain] ↔ [Target Domain]**

Shared structures:
- [Structural parallel 1]
- [Structural parallel 2]
- [Functional parallel 1]

Why it rhymes: [One sentence on core similarity]

Quality scores: [Parallel density, Source maturity, Transfer leverage, Invariants salience]

What doesn't port: [2-3 key exclusions]
```

## Example: Protocol Failure Rhyme

**Input:** "An emergent protocol failure where automated systems amplify small errors into cascading problems"

**Rhymes generated:**

1. **Sorcerer's Apprentice (Fantasia) ↔ Protocol Failure**
   - Shared structures:
     - Automation exceeds operator's control
     - Positive feedback with no governor
     - Small action → exponential consequences
     - Helper becomes threat
   - Why it rhymes: Delegated process lacks stop condition
   - Scores: [0.7, 0.9, 0.6, 0.8]
   - Doesn't port: Magic vs code, single actor vs distributed

2. **Cascading Grid Blackout ↔ Protocol Failure**
   - Shared structures:
     - Load redistribution creates new stress
     - Failure propagates through connections
     - Recovery requires external intervention
     - Time-critical detection window
   - Why it rhymes: Network effect amplifies local failure
   - Scores: [0.9, 1.0, 0.9, 0.9]
   - Doesn't port: Physical infrastructure vs digital, slower timescale

3. **Bank Run ↔ Protocol Failure**
   - Shared structures:
     - Rational individual action creates collective harm
     - Self-fulfilling prophecy dynamics
     - Trust threshold collapse
     - Circuit breakers as mitigation
   - Why it rhymes: Coordination failure under stress
   - Scores: [0.8, 0.9, 0.8, 0.9]
   - Doesn't port: Human psychology vs automated logic

**Best candidate:** Cascading grid blackout (highest scores across dimensions, mature source domain with known mitigations)

## Example: Understanding TikTok Scrolling

**Input:** "Why do people spend so much time scrolling TikTok?"

**Rhymes generated:**

1. **Panning for Gold in River ↔ TikTok Scrolling**
   - High-throughput flow, sparse jackpots
   - Hand motions that sift
   - Skill in "where/when to swirl," not producing gold
   - Move-on rules when patch depletes

2. **Patch Foraging (Ecology) ↔ TikTok Scrolling**
   - Probe content patches, decide when to leave
   - Rewards deplete locally
   - Travel cost is time/attention
   - Marginal value theorem applies

3. **QC on Fast Assembly Line ↔ TikTok Scrolling**
   - Rapid yes/no triage
   - Rare exceptions pulled for inspection
   - Fatigue increases misses
   - Throughput over precision

## When to Use

### Understanding Unfamiliar Domains
Bootstrap comprehension via structural echo
- "What does X rhyme with that I already understand?"
- Use mature source domains for maximum transfer

### Creative Seeding  
Generate multiple reference-class hits before designing
- "What are 5 systems that share this structure?"
- Wide breadth, loose tightness for divergent thinking

### Intuition Framing
Snap a half-formed hunch to known shape
- "This feels like... but I can't quite name it"
- Surface-level matches often sufficient

### Debugging & Sensemaking
Check for recurring structures in divergent settings
- "Have we seen this failure mode pattern before?"
- Strict tightness, systemic scope for precision

## Common Pitfalls & Patches

| Pitfall | Symptom | Patch |
|---------|---------|-------|
| **False positives** | Superficial resemblances crowding signal | Increase tightness; require functional AND structural overlap |
| **Anchoring** | Early match blocks richer ones | Erase & re-query with shifted lens |
| **Overreach** | Treating rhyme as explanatory | Explicitly flag as pre-model heuristic |
| **Cliché trap** | Generic comparisons ("life is a journey") | Score novelty dimension, require ≥0.6 |
| **Scope mismatch** | Comparing wrong abstraction levels | Clarify whether matching elements or systems |
| **Porting everything** | Assuming all features transfer | Demand explicit exclusion list |

## Downstream Moves

Once rhymes are generated, use these moves for deeper work:

**Dimensionalize:** Filter rhymes for utility, leverage, clarity using the 11 quality dimensions

**Metaphorize:** Build complete structural mapping from best rhyme candidate

## Integration Protocol

### Rhyme → Metaphorize Pipeline
1. Generate 3-5 rhyme candidates
2. Score on quality dimensions
3. Select highest-scoring rhyme (≥0.6 on key dimensions)
4. Use as input for metaphorize move
5. Build complete domain mapping

### Rhyme → Dimensionalize Pipeline
1. Rhyme target domain with mature source
2. Extract source domain's proven dimensions
3. Test which dimensions transfer
4. Adapt dimension definitions for target context

## Quality Checklist

Before finalizing rhyme candidates:

- [ ] Generated 3+ distinct rhyme candidates
- [ ] Each rhyme has ≥2 structural parallels
- [ ] Each rhyme has ≥1 functional parallel
- [ ] Scored top candidates on quality dimensions
- [ ] Identified what doesn't port for each rhyme
- [ ] Can explain each rhyme in <30 seconds
- [ ] Selected best candidate scores ≥0.6 on: parallel density, source maturity, transfer leverage, invariants salience
- [ ] Explicitly flagged as pre-analytical pattern match, not proof

## Micro-Example

**Input:** An emergent protocol failure

**Rhyme stack (pre-mapping):**
- Enchanted broom in *Fantasia*
- Cascading blackout
- Sorcerer's apprentice archetype  
- Positive feedback loop with no governor
- Runaway chemical reaction
- Flash crash in markets

No formal mapping yet—just a stack of echoes primed for model-building.

**Next move:** Score these candidates, select best, then metaphorize for detailed mapping.

## Advanced Techniques

### Constraint-Based Rhyming
Specify what must rhyme:
- "Rhyme X, but constrain to systems with known failure modes"
- "Rhyme X, focusing on resource allocation patterns"

### Multi-Source Rhyming
Find multiple partial rhymes, synthesize:
- "X rhymes with A for process, B for roles, C for failure modes"
- Composite mapping from multiple sources

### Temporal Rhyming
Match on dynamic patterns across time:
- Growth curves (S-curves, exponential, logarithmic)
- Cycle patterns (boom-bust, seasonal, oscillation)
- Decay patterns (half-life, asymptotic, stepped)

### Anti-Rhyming
Find structural opposites to define boundaries:
- "What is the opposite structure?"
- Useful for exclusion lists and constraint mapping

## When NOT to Use

Avoid rhyme for:
- Rigorous proof or validation (use formal methods)
- When you need precision over intuition
- Highly technical domains where analogies mislead
- When existing formal models are adequate
- Time-critical decisions (too exploratory)

## References

Canonical definition:
https://github.com/jordanrubin/FUTURE_TOKENS/blob/main/rhyme.md

Examples and workflows:
https://jordanmrubin.substack.com/p/conceptual-rhyme-and-metaphor

Related concepts:
- Analogical reasoning (Hofstadter)
- Pattern matching in expertise (Klein)
- Structural similarity (Gentner)