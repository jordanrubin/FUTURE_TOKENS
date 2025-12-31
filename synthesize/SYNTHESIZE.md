---
name: synthesize
description: Compress conflicting positions into decision-sufficient generative frame with explicit distortion tracking. Produces tiered outputs (quick/medium/deep), tracks what was dropped, and validates via round-trip testing. Use when thesis + antithesis exist and you need portable framework that explains both while generating novel predictions.
---

# Synthesis

## Overview

**Synthesis** is decision-sufficient compression of conflicting positions. It takes thesis + antithesis and produces a generative frame that:
- Preserves explanatory scope (answers questions both positions answered)
- Generates novel predictions (enables decisions beyond original scope)
- Minimizes description length (fewest gears sufficient for coverage)
- Tracks distortion (explicit drop-log of what was simplified and risks)

Synthesis is NOT "both sides have a point" or "split the difference"—it's a NEW structure that explains why both positions seemed true from their angles while making predictions neither position makes alone.

Claude should use this Skill when the user:
- Explicitly asks to "synthesize" positions
- Has thesis + antithesis that need integration
- Says "combine these views" or "what's the unified picture?"
- Needs framework that resolves apparent contradiction
- Wants portable model that works across contexts
- References conflicting sources/models that need reconciliation

## Minimal Usage

**Simplest invocation:**
```
synthesize:
  thesis: [statement]
  antithesis: [statement]
```

Claude will infer:
- **decision_question**: "How should one best understand the information presented?""s
- **audience**: general intelligent reader (assume undergraduate-level background)
- **distortion_budget**: 0.2 (moderate compression—preserve cruxes, simplify details)
- **output_tier**: medium (150w) as primary, with quick (50w) and deep (300w+) available

Claude outputs these inferences explicitly so user can adjust.

## Full Specification

### Input Parameters

| Parameter | Default | Range | Effect |
|-----------|---------|-------|--------|
| **thesis** | required | statement | Position 1 to integrate |
| **antithesis** | required | statement | Position 2 to integrate |
| **decision_question** | inferred | question | What user needs to decide/understand |
| **audience** | general | novice/general/expert | Background knowledge assumed |
| **distortion_budget** | 0.2 | [0.0-0.5] | How much simplification acceptable (0=lossless, 0.5=aggressive) |
| **output_tier** | medium | quick/medium/deep/all | Which compression level(s) to deliver |

### Process

#### 1. Infer Context (if not specified)
```
decision_question: Extract from thesis/antithesis structure
  - If comparative: "When to use X vs Y?"
  - If causal: "What actually causes Z?"
  - If normative: "What should we optimize for?"
  - If empirical: "What predicts outcome O?"

audience: Assess required background
  - novice: minimal jargon, concrete examples
  - general: moderate technical depth
  - expert: full technical detail, edge cases

distortion_budget: Infer from context
  - research/academic context: 0.1 (low distortion)
  - blog/popular context: 0.3 (moderate distortion)
  - teaching/introductory: 0.4 (high distortion for clarity)
```

#### 2. Extract Cruxes
Identify what each position hinges on:
```
thesis_cruxes: Key claims/assumptions thesis depends on
antithesis_cruxes: Key claims/assumptions antithesis depends on
shared_assumptions: What both positions assume (constant to factor out)
points_of_conflict: Where positions make incompatible predictions
```

#### 3. Identify Regime Boundaries
Determine when each position applies:
```
thesis_regime: Conditions under which thesis dominates
antithesis_regime: Conditions under which antithesis dominates
synthesis_regime: Unified framework specifying when to use which

Ask: What hidden variable(s) were they conditioning on differently?
```

#### 4. Build Generative Mechanism
Construct minimal structure that:
- Explains why thesis seemed true (from its angle)
- Explains why antithesis seemed true (from its angle)
- Makes predictions neither position makes alone
- Uses fewest gears sufficient for coverage

#### 5. Generate Tiered Outputs

**Quick (50w):** Elevator pitch
- Core insight only
- Key prediction
- When to use

**Medium (150w):** Blog post length
- Mechanism overview
- Why both positions were partly right
- Novel prediction(s)
- Regime boundaries (simplified)

**Deep (300w+):** Paper length
- Full mechanism with gears
- Complete regime map
- Multiple novel predictions
- Edge cases and caveats
- Worked examples

#### 6. Compile Drop-Log
Track what was simplified and risks:
```
simplified: [what was black-boxed] → risk: [consequence if detail matters]
omitted: [what cases ignored] → risk: [fails in those cases]
assumed: [what taken as given] → risk: [breaks if assumption false]
deferred: [what questions left open] → risk: [incomplete coverage]
```

#### 7. Self-Test
Validate via round-trip Q&A:
```
Can decision_question be answered from:
- Quick tier? (if not, what's missing?)
- Medium tier? (if not, what's missing?)
- Deep tier? (should succeed)

Which tier is minimum sufficient for decision?
```

#### 8. Assess Distortion
Estimate information loss:
```
predicted_distortion = (questions_unanswerable / total_questions)
actual_distortion ≤ distortion_budget (check)
```

## Output Format
```
### Context (inferred)
**Decision question:** [what user needs to decide]
**Audience:** [novice/general/expert]
**Distortion budget:** [0.0-0.5]

### Synthesis: Quick (50w)
[Elevator pitch: core insight + key prediction]

### Synthesis: Medium (150w)
[Mechanism overview + why both positions partly right + novel predictions + regime boundaries]

### Synthesis: Deep (300w+)
[Full structure with gears, complete regime map, multiple predictions, edge cases, worked examples]

### Structure

**Cruxes:**
- Thesis hinges on: [claims]
- Antithesis hinges on: [claims]  
- Shared assumptions: [what both take as given]

**Regime Boundaries:**
- Use thesis when: [conditions]
- Use antithesis when: [conditions]
- Synthesis needed when: [conditions]

**Novel Predictions:**
1. [Prediction neither input makes]
2. [Prediction neither input makes]
3. [...]

**Drop-Log (what was simplified):**
- Simplified: [what] → Risk: [consequence]
- Omitted: [what] → Risk: [consequence]
- Assumed: [what] → Risk: [consequence]
- Deferred: [what] → Risk: [consequence]

**Predicted Distortion:** [0.0-0.5]

### Quality Check
- [ ] Round-trip Q&A succeeds (can answer decision question)
- [ ] Cruxes preserved (key dependencies intact)
- [ ] Regime boundaries specified (when to use what)
- [ ] Novel predictions present (≥2)
- [ ] Drop-log complete (risks flagged)
- [ ] Distortion within budget
- [ ] Coherent (no contradictions)
```

## Quality Dimensions

Score synthesis on these dimensions (informed by compression framework):

### 1. Decision Sufficiency (PRIMARY)
Can decision question be answered from synthesis alone?
- **Score:** % of relevant questions answerable [0-100%]
- **Test:** Round-trip Q&A with gold questions
- **Threshold:** ≥90% for adoption

### 2. Scope Preservation (CONSTRAINT)
Does synthesis explain cases thesis OR antithesis handled?
- **Score:** % of input cases still explained [0-100%]
- **Test:** Regression suite from thesis+antithesis
- **Threshold:** ≥90% (if <90%, this is breaking change not synthesis)

### 3. Generativity (OPTIMIZATION TARGET)
Does synthesis make predictions neither input makes?
- **Score:** Count of novel, testable predictions [0-10+]
- **Test:** Expert panel evaluates prediction novelty
- **Threshold:** ≥3 for strong synthesis

### 4. Parsimony (OPTIMIZATION TARGET)
Minimal gears sufficient for coverage?
- **Score:** Gear count [1-20]
- **Test:** Iterative pruning—can you remove gears without losing explanatory power?
- **Threshold:** Fewer gears than thesis + antithesis combined

### 5. Regime Clarity (STRUCTURE)
Are boundaries between positions explicit and testable?
- **Score:** Boundary precision [0.0-1.0]
- **Test:** Can you classify novel cases into regimes?
- **Threshold:** ≥0.7 (can correctly classify 70% of test cases)

### 6. Robustness (OPTIMIZATION TARGET)
Stable under adversarial testing?
- **Score:** Adversarial survival rate [0-100%]
- **Test:** Steelman critiques from thesis/antithesis advocates
- **Threshold:** ≥70% (synthesis survives 7/10 critiques)

### 7. Communicability (OPTIMIZATION TARGET)
Decompression cost for users?
- **Score:** Time to understand [minutes]
- **Test:** User study with synthesis-naive participants
- **Threshold:** Quick tier <5min, Medium <15min, Deep <60min

### 8. Distortion Tracking (HONESTY)
Are simplifications and risks explicit?
- **Score:** Drop-log completeness [0-100%]
- **Test:** Can third party identify where synthesis might fail?
- **Threshold:** ≥80% (captures 4/5 major risks)

## Synthesis Types & Context-Dependent Weights

Different contexts optimize different dimensions:

### Research Synthesis
**Optimize for:** Generativity, Scope preservation
**Distortion budget:** 0.05-0.1 (very low)
**Output tier:** Deep (300w+)
**Example:** Integrating competing theories in academic paper

### Teaching Synthesis  
**Optimize for:** Communicability, Parsimony
**Distortion budget:** 0.3-0.4 (moderate-high)
**Output tier:** Medium (150w) with worked examples
**Example:** Explaining concept to undergraduates

### Policy Synthesis
**Optimize for:** Decision sufficiency, Regime clarity
**Distortion budget:** 0.15-0.25 (low-moderate)
**Output tier:** Medium (150w) with bullet summary
**Example:** Advising decision-makers on options

### Blog/Popular Synthesis
**Optimize for:** Communicability, Generativity
**Distortion budget:** 0.25-0.35 (moderate)
**Output tier:** Medium (150w)
**Example:** Explaining controversy to general audience

### Personal Decision Synthesis
**Optimize for:** Decision sufficiency, Parsimony
**Distortion budget:** 0.2-0.3 (moderate)
**Output tier:** Quick (50w) + Medium (150w)
**Example:** Deciding between career options

## Common Patterns

### Pattern 1: Regime Partition
Both positions correct in different contexts

**Structure:**
```
thesis: A causes B
antithesis: C causes B
synthesis: B = f(A, C, context)
  - when context = X: A dominates
  - when context = Y: C dominates
  - when context = Z: interaction effect
```

**Example:**
```
thesis: markets are efficient (information aggregation)
antithesis: markets fail (coordination problems)
synthesis: market efficiency = f(information_quality, coordination_cost, participant_rationality)
  - high info, low coord cost → efficient
  - low info, high coord cost → fail
  - mixed conditions → partial efficiency
```

### Pattern 2: Causal Chain Extension
Positions describe different parts of longer mechanism

**Structure:**
```
thesis: X → Y
antithesis: Y → Z
synthesis: X → Y → Z (positions describe different links)
```

**Example:**
```
thesis: education increases income (human capital)
antithesis: income increases education (family resources)
synthesis: bidirectional causality with feedback loop
  - education → income (skill development)
  - income → education (resource availability)
  - reinforcing cycle creates inequality
```

### Pattern 3: Level Mismatch
Positions operate at different levels of analysis

**Structure:**
```
thesis: individual-level mechanism
antithesis: system-level mechanism  
synthesis: cross-level interaction
```

**Example:**
```
thesis: people choose rationally (individual optimization)
antithesis: systems shape behavior (structural constraints)
synthesis: constrained optimization framework
  - individuals optimize given constraints
  - constraints emerge from system dynamics
  - feedback between levels
```

### Pattern 4: Hidden Variable
Positions condition on different hidden variables

**Structure:**
```
thesis: conclusion X (assuming hidden variable H = h1)
antithesis: conclusion ¬X (assuming hidden variable H = h2)
synthesis: conclusion = f(H), where H was implicit
```

**Example:**
```
thesis: remote work increases productivity (assumes: self-directed tasks)
antithesis: remote work decreases productivity (assumes: collaborative tasks)
synthesis: productivity = f(task_type, coordination_needs, individual_preference)
  - self-directed tasks: remote dominates
  - collaborative tasks: in-person dominates
  - mixed: hybrid optimal
```

## Worked Examples

### Example 1: Market Efficiency Debate

**Input:**
```
thesis: "Markets are efficient because they aggregate distributed information through prices, enabling optimal resource allocation."

antithesis: "Markets fail systematically due to information asymmetries, externalities, and coordination problems that prices cannot solve."
```

**Inferred Context:**
```
Decision question: When should we rely on markets vs other mechanisms?
Audience: General (policy context)
Distortion budget: 0.2 (moderate)
```

**Output:**

**Synthesis: Quick (50w)**
Markets efficiently aggregate information when participants have symmetric knowledge and low coordination costs, but fail when information asymmetries or externalities dominate. Optimal mechanism depends on information structure and coordination requirements of specific domain.

**Synthesis: Medium (150w)**
Both positions capture real phenomena operating in different regimes. Markets excel at information aggregation when: (1) information is distributed and privately held, (2) transaction costs are low, (3) externalities are minimal. They fail when: (1) information asymmetries enable exploitation, (2) coordination problems prevent efficient outcomes, (3) externalities disconnect private and social costs.

Novel prediction: Market efficiency is NOT binary but continuous—it degrades smoothly as information asymmetry and coordination costs increase. Optimal institutional design uses markets for high-information-quality, low-coordination-cost domains (commodity trading) and alternative mechanisms for high-asymmetry, high-coordination domains (healthcare, climate).

Regime map: Use markets when information quality > 0.7 and coordination cost < 0.3; use regulation/public provision when reversed; use hybrid mechanisms in between.

**Structure:**

**Cruxes:**
- Thesis hinges on: information dispersal, price signals work, participants rational
- Antithesis hinges on: systematic information gaps, coordination failures, externalities
- Shared assumptions: outcomes matter, efficiency is goal, mechanism design possible

**Regime Boundaries:**
- Markets dominate when: information distributed + symmetric, low transaction costs, minimal externalities
- Regulation needed when: information asymmetric, high coordination costs, significant externalities  
- Hybrid optimal when: mixed conditions, information quality moderate, some coordination needs

**Novel Predictions:**
1. Market efficiency is continuous function of (information quality, coordination cost)—allows quantitative prediction
2. Hybrid mechanisms outperform pure market OR regulation in middle range
3. Optimal policy varies by domain based on information structure, not ideology

**Drop-Log:**
- Simplified: Behavioral biases (assumed rationality) → Risk: Behavioral interventions underweighted
- Omitted: Political economy (capture, rent-seeking) → Risk: Implementation failures ignored
- Assumed: Social welfare is goal → Risk: Distributional concerns secondary
- Deferred: Dynamic efficiency (innovation, adaptation) → Risk: Static analysis only

**Predicted Distortion:** 0.18

**Quality Check:**
- [x] Round-trip Q&A: Can determine market vs regulation for novel domain
- [x] Cruxes preserved: Information structure and coordination costs explicit
- [x] Regime boundaries: Quantitative thresholds specified
- [x] Novel predictions: 3 testable claims
- [x] Drop-log: 4 major simplifications flagged
- [x] Distortion: 0.18 < 0.2 budget
- [x] Coherent: No contradictions

### Example 2: Remote Work Productivity

**Input:**
```
thesis: "Remote work increases productivity by eliminating commute time, reducing interruptions, and enabling focus in preferred environments."

antithesis: "Remote work decreases productivity by reducing spontaneous collaboration, weakening team cohesion, and blurring work-life boundaries."
```

**Output:**

**Synthesis: Quick (50w)**
Productivity impact depends on task type: remote work boosts individual focused work (coding, writing, analysis) but hinders collaborative creative work (brainstorming, design, negotiation). Optimal strategy is hybrid based on task mix.

**Synthesis: Medium (150w)**
Both effects are real and operate simultaneously. Remote work provides productivity GAINS for: individual contributor work requiring deep focus, asynchronous tasks, workers with long commutes or home-office setups. Remote work creates productivity LOSSES for: work requiring high-bandwidth communication, synchronous collaboration, early-career workers needing mentorship, workers lacking home-office infrastructure.

Novel prediction: Productivity impact is NOT universal but PERSON×TASK-specific. Optimal policy is neither full-remote nor full-office but ADAPTIVE: remote for focused individual work blocks, in-person for collaborative sessions, with worker choice for ambiguous tasks.

Regime boundaries: Remote when task is independent AND asynchronous AND worker prefers it; In-person when task requires real-time collaboration OR mentorship OR worker prefers it; Hybrid for mixed task portfolios.

**Structure:**

**Cruxes:**
- Thesis hinges on: interruption costs, commute waste, environment control
- Antithesis hinges on: collaboration value, social cohesion, boundary issues
- Shared assumptions: productivity matters, workers differ, tasks vary

**Regime Boundaries:**
- Remote optimal when: task = focused individual work, low collaboration needs, worker has home office
- Office optimal when: task = real-time collaboration, high bandwidth needs, early career
- Hybrid optimal when: mixed task portfolio, moderate collaboration needs, worker preference varies

**Novel Predictions:**
1. Productivity variance INCREASES with remote work (some workers gain, some lose)—distributional effect
2. Optimal remote/office ratio varies by role: IC engineers 80% remote, managers 50%, new hires 20%
3. Infrastructure investment (home office quality) predicts remote productivity better than personality

**Drop-Log:**
- Simplified: Industry differences (manufacturing impossible remote) → Risk: Generalizes from knowledge work
- Omitted: Childcare/caregiving constraints → Risk: Treats home as uniform work environment
- Assumed: Output measurable → Risk: Harder for roles with diffuse impact
- Deferred: Long-term career effects (promotion, learning) → Risk: Short-term productivity focus

**Predicted Distortion:** 0.22

## Good vs Bad Synthesis

### Good Synthesis Example

**Thesis:** "Free will exists because we experience making choices"
**Antithesis:** "Free will is illusion because choices are determined by prior causes"

**Good Synthesis:**
"Both positions confuse LEVELS of explanation. At psychological level, agency and choice are real phenomena with causal power (we deliberate, this affects behavior). At physical level, processes are deterministic (brain states follow physical laws). These don't conflict—they describe same events at different resolutions. Novel prediction: Interventions targeting 'conscious choice' (e.g., decision architecture) will affect outcomes EVEN IF underlying processes are deterministic, because psychological level has autonomous causal structure. Use psychological-level explanation for behavior change, physical-level explanation for mechanism research."

**Why good:**
- Explains why both positions seemed true (level confusion)
- Preserves scope (agency is real phenomenologically, determinism true physically)
- Generates novel prediction (interventions work despite determinism)
- Specifies regimes (when to use which level)
- Parsimonious (one insight—levels—explains everything)

### Bad Synthesis Example 1: False Balance

**Bad Synthesis:**
"Both free will believers and determinists have valid points. The truth is probably somewhere in between—we have some free will but also some determinism. It depends on the situation."

**Why bad:**
- No mechanism (doesn't explain HOW both are true)
- No novel predictions (just splits difference)
- Vague regime boundaries ("depends on situation" = no boundaries)
- Lost explanatory power (can't answer when/why)
- Not parsimonious (adds vagueness, not structure)

### Bad Synthesis Example 2: Picking Sides

**Bad Synthesis:**
"While thesis makes some interesting points about subjective experience, antithesis is ultimately correct—free will is indeed an illusion. The thesis position reflects a naive understanding that doesn't account for modern neuroscience."

**Why bad:**
- Not synthesis (just chose antithesis)
- Doesn't preserve thesis scope (dismisses rather than explains)
- No novel predictions (just antithesis predictions)
- No regime boundaries (thesis never applies)
- Fails decision sufficiency (when should I use thesis insights?)

### Bad Synthesis Example 3: Both Wrong

**Bad Synthesis:**
"Actually, both positions are wrong. Free will is neither real nor illusion—it's a SOCIAL CONSTRUCT that varies by culture. Eastern cultures emphasize collective harmony while Western cultures emphasize individual agency, proving the concept is culturally relative."

**Why bad:**
- Changes subject (from metaphysics to sociology)
- Doesn't address original question (are choices determined?)
- Lost both positions' insights (neither preserved)
- Novel prediction is non sequitur (cultural variation doesn't resolve determination)
- Not decision sufficient (can't answer when to use either position)

### Bad Synthesis Example 4: Overcomplicated

**Bad Synthesis:**
"We need a 12-dimensional framework considering: (1) quantum indeterminacy, (2) emergence hierarchies, (3) phenomenological qualia, (4) compatibilist frameworks, (5) libertarian agency, (6) hard determinism, (7) soft determinism, (8) eliminativism, (9) panpsychism, (10) computational theory of mind, (11) embodied cognition, (12) social construction. Each dimension interacts with others creating 144 pairwise relationships..."

**Why bad:**
- Massive overcomplication (12 dimensions unnecessary)
- Not parsimonious (simpler explanation available)
- Not decision sufficient (too complex to use)
- Violates communicability (can't hold in working memory)
- Fails drop-log (didn't simplify anything)

## When to Use Synthesis

**Use synthesis when:**
- Two positions seem incompatible but both have evidence
- Need unified framework that explains both perspectives
- Decision requires knowing when to apply which position
- Creating teaching material that needs to integrate views
- Building research program that bridges competing theories
- Positions are at similar level of abstraction (both empirical, or both normative)
- Positions address same question (not talking past each other)

## When NOT to Use Synthesis

**Avoid synthesis when:**

### 1. Positions are incommensurable (different values, not facts)
```
Position A: "Maximize individual liberty"
Position B: "Maximize collective welfare"

These are VALUE PRIORITIES, not factual claims.
Synthesis would be false consensus—pretending values can be optimized simultaneously when they actually trade off.
```

### 2. One position is simply wrong (not addressing different regimes)
```
Position A: "Earth is round" (correct, evidence-based)
Position B: "Earth is flat" (incorrect, refuted)

Don't synthesize truth with falsehood.
Correct response: Explain why B is wrong, not "both have insights."
```

### 3. Positions talk past each other (different questions)
```
Position A: "Consciousness is hard problem" (philosophical question about qualia)
Position B: "Consciousness correlates with brain activity" (empirical question about correlates)

These aren't contradicting—they're addressing different questions.
Synthesis would confuse levels, not integrate them.
```

### 4. Simple answer exists (synthesis would overcomplicate)
```
Question: "Is remote work good?"
Position A: "Yes for some tasks"
Position B: "No for other tasks"

Simple answer: "Depends on task type."
Don't build elaborate framework when straightforward partition suffices.
```

### 5. Evidence clearly favors one position (synthesis would hedge wrongly)
```
Position A: "Vaccines cause autism" (thoroughly refuted)
Position B: "Vaccines don't cause autism" (strongly supported)

Synthesis that "finds middle ground" would be epistemically dishonest.
Correct response: Reject A, explain why.
```

### 6. Positions are early/incomplete (premature synthesis)
```
Position A: "X might be related to Y" (exploratory)
Position B: "Z might be related to Y" (exploratory)

Wait for more evidence before synthesizing.
Premature synthesis locks in assumptions before data mature.
```

### 7. Synthesis would lose critical nuance needed for decision
```
Position A: "Algorithm is biased in direction D1"
Position B: "Algorithm is biased in direction D2"

If decision requires knowing WHICH bias, synthesis that averages loses critical information.
Keep positions separate, document specific biases.
```

## Advanced Techniques

### Multi-Position Synthesis (N > 2)

When synthesizing 3+ positions:

**Approach 1: Pairwise then integrate**
1. Synthesize A + B → S1
2. Synthesize S1 + C → S2
3. Validate S2 explains A, B, C

**Approach 2: Cluster then synthesize**
1. Group similar positions
2. Synthesize each cluster
3. Synthesize cluster representatives

**Approach 3: Dimensional factorization**
1. Identify orthogonal axes positions vary on
2. Build N-dimensional regime map
3. Positions are points in space

### Iterative Synthesis Refinement

Synthesis improves through revision:

**Pass 1: Scope + basic mechanism**
- Ensure both positions explained
- Sketch rough regime boundaries
- Identify 1-2 novel predictions

**Pass 2: Parsimony**
- Prune unnecessary gears
- Merge redundant mechanisms
- Simplify regime boundaries

**Pass 3: Generativity**
- Add novel predictions
- Test predictions for distinctness
- Ensure predictions are testable

**Pass 4: Robustness**
- Adversarial testing
- Steelman critiques
- Patch discovered holes

**Pass 5: Polish**
- Clarify exposition
- Add worked examples
- Complete drop-log

Typically 3-5 passes until convergence.

### Synthesis + Other Skills

**Synthesis → Dimensionalize:**
After synthesis, use dimensionalize to score options using synthesized framework.

**Antithesize → Synthesis:**
Generate antitheses to thesis, then synthesize thesis + strongest antithesis.

**Rhyme → Metaphorize → Synthesis:**
Use metaphor to illuminate synthesis structure (as we did with compiler/API/treaty).

**Extremify → Synthesis:**
Test synthesis by extremifying along synthesized dimensions—does it predict correctly at extremes?

## Validation Protocol

### Self-Validation (during construction)

1. **Round-trip Q&A test**
   - List 5-10 questions decision requires answering
   - Try to answer from synthesis alone
   - If can't answer, add to synthesis or flag in drop-log

2. **Scope regression test**
   - List 10 cases thesis explained
   - List 10 cases antithesis explained
   - Verify synthesis explains all 20 (or flag exceptions in drop-log)

3. **Novelty test**
   - For each prediction: could thesis/antithesis make this prediction?
   - If yes, not novel—remove or refine
   - If no, keep and mark as generative

4. **Parsimony test**
   - For each gear: remove it and check if synthesis still works
   - If works without gear, remove gear
   - If breaks, keep gear

5. **Coherence test**
   - Check for logical contradictions
   - Check for impossible regime conditions
   - Check for circular dependencies

### External Validation (after construction)

1. **Adversarial critique**
   - Show to thesis advocates: "Does this explain why you were right?"
   - Show to antithesis advocates: "Does this explain why you were right?"
   - If either says no, synthesis failed scope preservation

2. **Blind prediction test**
   - Give novel case to synthesis user
   - Ask them to predict outcome using synthesis
   - Compare to ground truth
   - Measure accuracy

3. **Teaching test**
   - Give synthesis to naive person
   - Ask them to explain thesis + antithesis from synthesis
   - If they can't, communicability failed

4. **Decision replay test**
   - Have third party make decision using synthesis
   - Compare to decision made with full thesis + antithesis
   - Measure agreement (should be >90%)

## Common Pitfalls & Fixes

| Pitfall | Symptom | Fix |
|---------|---------|-----|
| **False balance** | "Both sides have points" without mechanism | Force: HOW are both true? Build explicit regime map |
| **Picking sides** | Synthesis just agrees with one position | Check: Does synthesis explain why OTHER position seemed true? |
| **Complexity explosion** | More gears than thesis + antithesis combined | Prune: Remove gears iteratively until something breaks |
| **Vague boundaries** | "It depends" without specifying on what | Operationalize: What variables determine regimes? |
| **No novel predictions** | Synthesis just restates inputs | Generate: What does THIS framework predict that neither input does? |
| **Drop-log neglect** | No tracking of simplifications | Document: What did you black-box? What risks? |
| **Level confusion** | Mixing normative and empirical claims | Separate: Is this about what IS or what SHOULD BE? |
| **Scope loss** | Synthesis can't answer questions inputs could | Regression test: Does synthesis handle all input cases? |
| **Premature synthesis** | Positions are exploratory, evidence thin | Wait: More data needed before synthesizing |
| **Value disagreement as factual** | Treating preference differences as resolvable by evidence | Recognize: This is value conflict, not factual dispute |

## Integration with Other Skills

### Upstream Skills (use before synthesis)

**Antithesize:**
- Generate strong antithesis to thesis before synthesizing
- Ensures you're synthesizing steelman positions, not strawmen

**Rhyme:**
- Find structural parallels to guide synthesis construction
- Example: "This debate rhymes with market efficiency debate"

**Question-gym:**
- Explore user's hidden assumptions before synthesizing
- Ensures synthesis addresses actual decision question

### Downstream Skills (use after synthesis)

**Dimensionalize:**
- Convert synthesized framework into scoreable dimensions
- Use to evaluate options using synthesis

**Extremify:**
- Test synthesis by pushing to extremes
- Check if predictions hold at boundary conditions

**Metaphorize:**
- Port synthesis to new domain via structural mapping
- Validate synthesis by checking if it transfers

### Parallel Skills (use during synthesis)

**Framestorm:**
- Generate multiple synthesis candidates
- Pick best via quality dimensions

**Mental-move-generator:**
- Apply cognitive moves to improve synthesis construction
- Example: Use "constraint relaxation" to find hidden assumptions

## Meta-Note

Synthesis is PROSOCIAL INTEGRATION. You're helping both positions by:
- Explaining why each seemed true (charitable interpretation)
- Preserving their insights (scope preservation)
- Showing when each applies (regime boundaries)
- Building on both (generativity)

Done well, advocates should say "yes, this captures my insight AND explains the other side" not "you compromised my position."

The goal isn't to RESOLVE conflict by picking winner—it's to TRANSCEND conflict by finding higher-level framework where both positions are correct in their domains.

## References

Theoretical foundations:
- Minimum Description Length (MDL) principle
- Rate-distortion theory
- Kolmogorov complexity
- Decision-sufficient statistics

Related concepts:
- Synthesis vs summary (summary = readability; synthesis = decision-sufficiency)
- Compression with drop-log (explicit distortion tracking)
- Multi-stakeholder evaluation (different audiences, different quality criteria)

Canonical examples:
- Compiler optimization (code compression)
- API design (interface compression)
- Peace treaties (political compression)

