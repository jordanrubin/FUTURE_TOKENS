---
name: dimensionalize
description: Transform complex decisions or systems into 3-7 measurable dimensions that score high on fidelity (validity+stability), leverage (actionability+impact), and low on complexity (cognitive load+overfitting). Use when facing multi-factor choices, analyzing systems, or comparing non-obvious options.
---

# Dimensionalize

## Overview

Dimensionalization is naming the handful of dials that actually move a system. A good dial scores high on three meta-dimensions: **fidelity**, **leverage**, and low on **complexity**.

Claude should use this Skill when the user:
- Explicitly asks to "dimensionalize" something
- Faces a complex decision with competing factors
- Wants to understand what actually moves a system
- Needs to compare options across different attributes
- Asks "what dimensions matter here?" or similar

## Core Framework

### The Three Meta-Dimensions

| Meta-Dim | Sub-Dims | Mnemonic |
|----------|----------|----------|
| **Fidelity** | validity · stability | "is it *real* and does it hold up?" |
| **Leverage** | actionability · impact | "can i twist it, and does twisting matter?" |
| **Complexity** | cognitive load · overfitting risk | "can i juggle it, or does it drown me?" |

**Remember: F=valid+stable, L=action+impact, C=load+overfit**

### Meta-Dimension 1: Fidelity
> *Does the dial carve reality at the joints?*

**Validity** = tracks an actual difference that exists  
**Stability** = keeps tracking when zoom, time, or context shift

**High-Fidelity examples:**
- Factor exposure (finance)
- Latency (systems)
- Tempo (music)

**Low-Fidelity examples:**
- "Vibe"
- "Tech debt" (without specification)
- Generic "efficiency"

### Meta-Dimension 2: Leverage
> *Twist → consequence*

**Actionability** = you control the slider  
**Impact** = slider moves the outcome

**Good Leverage examples:**
- Autonomy vs stimulation (parenting decisions)
- Modularity (software architecture)
- Remote vs on-site (work arrangements)

**Bad Leverage examples:**
- "Be more strategic" (no clear control)
- "Gym-playlist BPM" (minimal impact)
- "Market conditions" (external, uncontrollable)

### Meta-Dimension 3: Complexity
> *Few enough dials to stay in head-RAM*

**Cognitive load** = how many sliders you must juggle  
**Overfitting** = dials that add theoretical resolution but no practical gain

**Low-Complexity examples:**
- Strength · endurance · recovery (fitness)
- Price · quality · speed (product)

**High-Complexity examples:**
- 30 biometric streams for a workout plan
- 50+ OKRs for five people
- More than 9 dimensions for any decision

**Complexity ceiling: 7 axes maximum (ideally 3-5)**

## LLM Quick-Cast Recipe

When dimensionalizing, follow this protocol:
```
[[dimensionalize]]
[[goal: <decision / system>]]
[[fidelity_floor: validity+stability]]
[[leverage_floor: action+impact]]
[[complexity_ceiling: 7 axes]]
[[remember: mark each axis (F,L,C) score]]
```

## Systematic Process

### 1. Identify the System
What needs dimensionalizing?
- A decision (career, purchase, strategy)
- A system (team dynamics, codebase, market)
- A concept (happiness, productivity, design)

### 2. Generate Candidate Dimensions
Brainstorm 10-20 possible dials, then filter using F·L·C criteria

### 3. Score Each Dimension
Rate each candidate on 1-5 scale:

**Fidelity:**
- Validity: 1 (vague) → 5 (precisely measurable)
- Stability: 1 (context-dependent) → 5 (holds across contexts)
- Combined F score: average of validity + stability

**Leverage:**
- Actionability: 1 (no control) → 5 (direct control)
- Impact: 1 (negligible effect) → 5 (major effect)
- Combined L score: average of actionability + impact

**Complexity:**
- Cognitive load: 1 (simple) → 5 (hard to track)
- Overfitting: 1 (essential) → 5 (theoretical polish)
- Combined C score: average of load + overfitting
- **Lower is better for complexity**

### 4. Filter and Refine
Keep dimensions with:
- F ≥ 3.5
- L ≥ 3.5
- C ≤ 2.5

Aim for 3-7 final dimensions

### 5. Validate
For each dimension, answer:
- Can you measure/score real options on it?
- Does changing it actually change outcomes?
- Can you hold all dimensions in working memory?
- Are dimensions relatively independent?

## Output Format

For each dimension, provide:
```
**[Dimension Name]** ⟦F: X.X, L: X.X, C: X.X⟧
- What it measures: [one sentence]
- Range: [low end] → [high end]
- Control lever: [how to adjust it]
- Why it matters: [connection to outcome]
```

## Example: Career Decision

**Goal:** Choose next career move

**Dimensions:**

1. **Value-Capture Efficiency** ⟦F: 5.0, L: 4.5, C: 1.0⟧
   - What: Post-tax compensation per unit of effort+risk
   - Range: $50/hr → $500/hr equivalent
   - Lever: Negotiation, equity %, role choice
   - Why: Direct impact on financial security

2. **Counterfactual Impact** ⟦F: 4.0, L: 4.0, C: 2.0⟧
   - What: Good that happens because you showed up
   - Range: Maintenance → transformative
   - Lever: Choose high-leverage vs support roles
   - Why: Long-term meaning and satisfaction

3. **Option Surface Area** ⟦F: 4.5, L: 5.0, C: 1.0⟧
   - What: Future doors unlocked (network, brand, skills)
   - Range: Dead-end → exponential
   - Lever: Prestige vs stealth, industry choice
   - Why: Compounds across career

4. **Personal Excitation** ⟦F: 4.0, L: 4.0, C: 1.0⟧
   - What: Will you wake up energized for 18+ months?
   - Range: Dread → flow state
   - Lever: Scope negotiation, problem domain fit
   - Why: Performance and sustainability

5. **Autonomy Bandwidth** ⟦F: 5.0, L: 4.0, C: 1.0⟧
   - What: Decision-making freedom
   - Range: Micromanaged → self-directed
   - Lever: Title, reporting structure, remote options
   - Why: Agency and execution speed

6. **Skill Compounding Rate** ⟦F: 4.0, L: 4.0, C: 2.0⟧
   - What: How fast rare capabilities grow
   - Range: Plateau → steep learning curve
   - Lever: Problem complexity, mentor density
   - Why: Long-term career capital

7. **Lifestyle Stability** ⟦F: 5.0, L: 4.0, C: 1.0⟧
   - What: Stress, hours, location flexibility
   - Range: Burnout risk → sustainable
   - Lever: Team size, sector, remote policy
   - Why: Everything else requires this foundation

## Common Failure Modes

**Too many dimensions (>9)**
- Solution: Merge correlated ones, drop low-leverage
- Ask: "If I had to pick just 5, which matter most?"

**Vague dimensions**
- Bad: "Strategic alignment", "Culture fit"
- Good: "% of roadmap you control", "Team turnover rate"
- Fix: Demand concrete measurement criteria

**No-control dimensions**
- Bad: "Market timing", "Regulatory environment"
- Good: "Entry timing choice", "Sector selection"
- Fix: Reframe to controllable version or drop

**Overfitted dimensions**
- Bad: Separate dims for "email velocity" and "slack response time"
- Good: Single "communication cadence" dimension
- Fix: Collapse correlated dials

**Hidden dependencies**
- Check: If dimension X is high, does that force dimension Y?
- Fix: Keep only the upstream dimension or treat as constraint

## Advanced Techniques

### Constraint Handling
Some factors are binary gates, not dimensions:
- "Must be remote" → constraint, not dimension
- "Salary > $X" → threshold, not slider
- Apply constraints first, dimensionalize remaining space

### Weighting
Context determines relative importance:
- New parent → boost lifestyle stability weight
- Early career → boost skill compounding weight
- Pre-exit → boost value capture weight

### Dimension Discovery via Rhyme
Stuck on dimensions? Use the Rhyme skill:
- "What is this decision structurally similar to?"
- Import proven dimensions from analogous domain
- Example: Career choice ← Athletic training ← Research project

### Meta-Dimensionalization
You can dimensionalize the dimensions themselves using F·L·C scores to validate your framework

## Integration with Other Skills

**Rhyme:** Find analogous systems, borrow their dimensions
**Metaphorize:** Port complete dimension frameworks across domains

## Quality Checklist

Before finalizing dimensionalization:

- [ ] 3-7 dimensions total (not too many, not too few)
- [ ] Each dimension: F ≥ 3.5
- [ ] Each dimension: L ≥ 3.5
- [ ] Each dimension: C ≤ 2.5
- [ ] Can score 5+ real options on each dimension
- [ ] Dimensions are relatively independent
- [ ] Covers 80%+ of what matters
- [ ] Can hold all dimensions in working memory
- [ ] Each dimension has clear measurement criteria
- [ ] Each dimension has identifiable control lever

## When NOT to Use

Avoid dimensionalization for:
- Simple binary choices (overhead exceeds value)
- Pure gut decisions (some things resist analysis)
- Time-critical decisions (use faster heuristics)
- When excellent framework already exists
- Emotionally fraught choices where analysis obscures values

## References

For theoretical foundation:
https://www.lesswrong.com/posts/LSFiKt4zGxXcX2oxi/dimensionalization

For practical examples:
https://jordanmrubin.substack.com/p/use-ai-to-dimensionalize

Canonical definitions:
https://github.com/jordanrubin/FUTURE_TOKENS/blob/main/dimensionalize.md