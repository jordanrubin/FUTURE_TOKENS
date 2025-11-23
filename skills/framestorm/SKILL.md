# Framestorm

**framestorm generates a set of coherent, distinct perspectives (frames) through which a question, problem, or concept can be viewed.** unlike diverge (broad option generation) or reframe (inhabiting a single lens), framestorm identifies multiple *frames* — each with its own primitives, metaphors, incentives, and blindspots — that perspectivize can then inhabit. framestorm is about curating the lenses, not applying them.

## tl;dr

**framestorm ≠ reframe.**

- **reframe** → pick ONE lens and restate the object inside it
- **framestorm** → generate MANY viable lenses without inhabiting any of them

framestorm asks:

> "what are the plausible, meaningful frames through which this question could be understood?"

it's a **lens-generation operator**.

**output:** 5-15 frames where claim shifts truth value or relevance, ranked by leverage (dialectic/decision/paradigm-shift potential), feeding antithesize, synthesis moves, or perspectivize.

---

## when to use

use **framestorm** when you want:

- a menu of **perspectives** to choose from
- alternative **conceptual viewpoints**
- multiple **interpretive lenses** for perspectivize
- different **value structures**, **mechanistic assumptions**, or **ontologies**
- structured ways to shift thinking without collapsing options

don't use when:

- you want to restate the object → **reframe**
- you want broad conceptual neighbors → **diverge**
- you want opposition → **antithesize**
- you want assumptions → **excavate**
- you want causal hypotheses → **backchain**

rule of thumb:
**framestorm = generate the candidate worldviews.**

---

## examples

- framestorm: decision_impact, n=7
- framestorm: dialectic_leverage + paradigm_distance, n=10
- framestorm: temporal × scale, identity_preserving
- framestorm: axiological + computational, adversarial_ok

-----

## frame types (what perspectives exist)

### abstract frame families

**temporal** — time horizons that flip the sign
•	microsecond → millennium scales
•	pre/during/post event boundaries
•	ergodic vs path-dependent views

**scale/zoom** — resolution changes meaning
•	individual → group → species → ecosystem
•	local → regional → global → universal
•	quantum → classical → relativistic

**observer** — whose eyes matter
•	user → designer → investor → regulator
•	parent → child → teacher → peer
•	native → immigrant → tourist → anthropologist

**axiological** — value weight permutations
•	efficiency → equity → resilience
•	freedom → security → dignity
•	growth → sustainability → reversibility

**ontological** — what kind of thing it is
•	process vs object vs relation
•	discrete vs continuous vs probabilistic
•	designed vs emergent vs contingent

**causal** — mechanism assumptions
•	proximate vs ultimate causes
•	selection vs drift vs constraint
•	top-down vs bottom-up vs circular

**epistemic** — knowledge/certainty regimes
•	known knowns → unknown unknowns
•	frequentist vs bayesian vs algorithmic
•	empirical vs theoretical vs pragmatic

### domain-specific frame families

**resource-frame**
think in terms of allocation, scarcity, replenishment, throughput.

**game-frame**
agents, incentives, equilibria, strategic coupling.

**control-frame**
feedback loops, stability, oscillation, actuation.

**information-frame**
signals, uncertainty, asymmetry, bandwidth, filters.

**energy/entropy-frame**
flows, gradients, dissipation, stability basins.

**ecology-frame**
niches, competition, succession, interaction webs.

**narrative-frame**
characters, goals, arcs, conflicts, misalignments.

**institutional-frame**
rules, power, incentives, legibility, enforcement.

**psychological-frame**
cognition, bias, motivation, attention, affect.

**computational** — complexity regimes
•	P vs NP vs undecidable
•	online vs offline vs streaming
•	exact vs approximate vs heuristic

plus any bespoke or domain-specific frames.

-----

## ranking functions (how to order frames)

**dialectic_leverage** — maximum opposition potential
•	score = truth_flip × assumption_depth × crux_clarity
•	use when: feeding antithesize, building debates
•	output: frames that generate sharpest antitheses

**decision_impact** — changes action
•	score = P(different_choice) × choice_magnitude × reversibility
•	use when: actual decisions pending
•	output: frames that flip the recommendation

**paradigm_distance** — orthogonality to default
•	score = semantic_distance × unfamiliarity × coherence
•	use when: escaping local optima, creativity
•	output: frames from alien territories

**assumption_surface** — exposes hidden priors
•	score = assumptions_revealed × criticalness × implicitness
•	use when: debugging reasoning, finding blindspots
•	output: frames that surface buried beliefs

**synthesis_potential** — enables recombination
•	score = complementarity × tension × bridge_availability
•	use when: preparing dialectic synthesis
•	output: frames that create productive friction

-----

## generation protocol

### step 0: extract latent axes
identify underlying dimensions: incentives, resources, agents, time, uncertainty, conflict, values.

### step 1: identify anchor frame
make explicit the default/given perspective (the frame from which the question is asked).

### step 2: choose frame families
select broad ontological families to represent (e.g., temporal, game, resource, psychological, etc.). aim for diversity across abstract and domain-specific families.

### step 3: enumerate orthogonal cuts
using frame types above, generate 2-3 frames per family (aim for 10-20 total candidates).

for each candidate frame:
- define the **primitives** (what counts as a unit)
- specify the **mechanism assumptions** (how things work)
- highlight what the frame **reveals**
- specify what it **systematically ignores** (blindspots)

### step 4: test each frame
does claim change truth/relevance? frames should:
- use different primitives
- have different levers
- have different failure modes
- make different causal assumptions
- use different vocabularies

### step 5: score by ranking function
apply chosen ranking function (dialectic_leverage, decision_impact, paradigm_distance, etc.)

### step 6: filter and orthogonalize
keep top 5-10 by score + diversity. ensure frames differ meaningfully, not superficially.

### step 7: attach blindspots
each frame must explicitly state what it hides:
- structural blindspots
- temporal blindspots
- normative blindspots
- psychological blindspots

### step 8: annotate with downstream hints
add suggestions for which operators work well from each frame (antithesize, perspectivize, metaphorize, etc.)

-----

## operators (what to do with frames)

**frame_hop** — minimal edit to jump frames
•	"from efficiency frame → equity frame, change metric from throughput to gini"

**frame_blend** — weighted average of perspectives
•	"70% individual autonomy + 30% collective harmony"

**frame_sequence** — temporal ordering matters
•	"start in pragmatic frame → shift to axiological once working"

**frame_conditional** — context triggers frame
•	"if n<150 use trust frame, else use contracts frame"

**frame_dialectic** — synthesize opposing frames
•	"market frame (thesis) + gift frame (antithesis) → commons frame (synthesis)"

-----

## api (pseudo)

framestorm:
input:
proposition: string
ranking: [dialectic_leverage|decision_impact|paradigm_distance|assumption_surface|synthesis_potential]
n: int (5-15)
frame_types: [list] (optional, default=all)
constraints: [identity_preserving|coherence_required|actionable_only]
intensity: 1..5
output:
frames: [
{
name: string
type: string
description: string
score: float
truth_value: [true|false|meaningless|partial]
key_shift: string
downstream_hint: string
}
]
anchor_frame: string
cruxes: [string]

-----

## worked example

**proposition**: "we should maximize user engagement"

**framestorm: dialectic_leverage, n=7**

**anchor frame**: business/growth mindset (engagement = success proxy)

**generated frames** (scored by dialectic potential):

1. **addiction medicine** [score: 0.92]
- type: observer
- truth: false (engagement = pathology symptom)
- key_shift: optimize → treat
- downstream: antithesize with "minimize compulsive use"
1. **finite game** [score: 0.88]
- type: temporal × game-theoretic
- truth: false (burns out user base)
- key_shift: engagement → retention over decade
- downstream: objective_swap to lifetime value
1. **cognitive ecology** [score: 0.85]
- type: scale × ontological
- truth: meaningless (wrong level of analysis)
- key_shift: individual metric → ecosystem health
- downstream: units_check, type_safety
1. **mastery progression** [score: 0.79]
- type: axiological
- truth: partial (shallow engagement vs deep skill)
- key_shift: time-on-site → capability development
- downstream: dimensionalize engagement types
1. **attention commons** [score: 0.77]
- type: institutional
- truth: false (tragedy of commons)
- key_shift: private capture → shared resource
- downstream: mechanism redesign
1. **tool mindset** [score: 0.71]
- type: ontological
- truth: meaningless (tools disappear when working)
- key_shift: engagement → job completion
- downstream: counter_model
1. **metabolic fitness** [score: 0.68]
- type: causal × temporal
- truth: partial (healthy vs inflammatory engagement)
- key_shift: volume → quality/recovery ratio
- downstream: temporal_refactor

**cruxes identified**:

- whether user wellbeing is instrumental or terminal value
- whether platform is entertainment or utility
- whether attention is commodity or commons

-----

## additional examples (mini)

### example: framestorm "improving decision quality"

**frame 1: information-frame**
primitives: signals, noise, bandwidth, filters.
reveals: bottlenecks in data flow, ambiguity, epistemic gaps.
blindspots: motivation, power.
useful for: analytic workflows, forecasting.

**frame 2: game-frame**
primitives: agents, incentives, strategies.
reveals: misaligned interests, signaling games.
blindspots: phenomenology, attention cost.
useful for: multi-agent conflicts.

**frame 3: psychological-frame**
primitives: attention, bias, emotional salience.
reveals: cognitive load, framing effects, avoidance patterns.
blindspots: macro-structure.
useful for: individual performance.

**frame 4: institutional-frame**
primitives: rules, norms, enforcement, legibility.
reveals: downstream pathologies of process and protocol.
blindspots: individual texture.
useful for: organizations.

**frame 5: energy/entropy-frame**
primitives: gradients, attractors, dissipation.
reveals: stable basins, path dependence, irreversibility.
blindspots: agency.
useful for: complex adaptive systems.

---

### example: framestorm "why is strategic planning so hard?"

**frame 1: attention-frame**
focus limitation → poor anticipatory depth.
blindspot: institutional incentives.

**frame 2: coordination-frame**
distributed actors → misaligned plans.
blindspot: personal psychology.

**frame 3: uncertainty-frame**
fat-tailed world → fragile forecasts.
blindspot: incentives.

**frame 4: narrative-frame**
humans need story arcs → bias toward coherence.
blindspot: noise.

**frame 5: ecological-frame**
organizational niches shift → plans decay.
blindspot: individual agency.

-----

## integration with other ops

**upstream:**
- decompose → extract underlying dimensions before framestorming
- diverge → broad contextual expansion to identify candidate families

**downstream:**
- perspectivize → choose and inhabit one frame
- reframe → restate the object inside a chosen frame
- antithesize → generate opposition from within a frame
- excavate → extract the assumptions of one generated frame
- backchain → trace the causal ontology of any one frame
- narrativize → instantiate a frame as lived experience
- dimensionalize → extract metrics from frame-specific axes
- metaphorize → import operators from an alien frame

**framestorm → antithesize**

```
1. framestorm: dialectic_leverage, n=10
2. select top 2 opposing frames
3. antithesize using frame[0] vs frame[1]
4. log frame-dependent assumptions
```

**framestorm → dimensionalize**

```
1. framestorm: decision_impact, n=7
2. extract key metrics from each frame
3. dimensionalize using frame-specific axes
4. weight dimensions by frame probability
```

**framestorm → metaphorize**

```
1. framestorm: paradigm_distance, n=5
2. pick most alien coherent frame
3. metaphorize from that domain
4. import frame-specific operators
```

**framestorm → perspectivize**

```
1. framestorm: decision_impact, n=7
2. pick frame that changes recommendation
3. perspectivize: fully inhabit that lens
4. restate problem from within frame
```

**framestorm → synthesis**

```
1. framestorm: synthesis_potential, n=8
2. identify complementary pairs
3. find bridging concepts
4. construct synthetic frame
```

-----

## quality heuristics

**quality criteria**

**orthogonality**
- [ ] frames differ in ontology or mechanism
- [ ] no superficial rephrasing

**coherence**
- [ ] each frame has coherent primitives
- [ ] no internal contradiction

**diagnostic usefulness**
- [ ] each frame reveals something hidden by others
- [ ] blindspots stated clearly

**coverage**
- [ ] at least 4-6 distinct frame families touched
- [ ] at least one weird/outlier frame

**good framestorm outputs:**

- at least 3 frames flip truth value completely
- frames span 3+ frame types
- each frame is internally coherent
- frames reveal hidden assumptions
- clear downstream operator suggestions
- diversity > redundancy

**bad framestorm outputs:**

- minor variations on same frame
- performative/rhetorical frames only
- no truth-value changes
- all frames from single type
- no actionable differences
- pure academic exercise

-----

## common failure modes

**single-axis fixation**

- symptom: all frames are temporal or all axiological
- fix: force 3+ frame types minimum

**rhetorical frames**

- symptom: clever renamings without substance
- fix: demand truth-value or decision changes

**frame soup**

- symptom: 20+ frames with no ranking
- fix: always score and filter to top 5-10

**missing anchor**

- symptom: unclear what default frame was
- fix: explicitly state anchor frame first

**no downstream value**

- symptom: frames don't enable next moves
- fix: annotate each with operator hints

-----

## anti-patterns

- **synonym frames** — different words, same logic.
- **vibe frames** — frames without primitives or mechanisms.
- **collapsed reframe** — fully embodying a frame instead of listing it.
- **overly abstract** — frames must be runnable by perspectivize.
- **pretend neutrality** — every frame has biases and should declare them.

-----

## genre-specific patterns

### strategy
frames highlight power dynamics, constraints, attention bottlenecks.

### governance
frames focus on incentives, legibility, enforcement, and coordination.

### research
frames distinguish mechanistic, statistical, phenomenological perspectives.

### product
frames emphasize user goals, friction, incentives, workflows.

### interpersonal
frames foreground miscommunication, attachment patterns, goal conflicts.

-----

## decision flowchart

```
need fresh perspective?
 ├─ decision pending? ──> decision_impact ranking
 ├─ building argument? ──> dialectic_leverage ranking
 ├─ escaping local optimum? ──> paradigm_distance ranking
 ├─ debugging reasoning? ──> assumption_surface ranking
 └─ preparing synthesis? ──> synthesis_potential ranking
```

-----

## minimal playbook (copy/paste)

• "framestorm: dialectic_leverage, n=7. identify frames where claim inverts."
• "framestorm: decision_impact, n=5. find frames that change the answer."
• "framestorm: paradigm_distance, n=10. generate alien-but-coherent views."
• "framestorm: temporal × scale, n=8. vary time and zoom simultaneously."
• "framestorm: axiological + computational, n=6, adversarial_ok."
• "framestorm: assumption_surface, n=5. expose hidden requirements."

-----

## advanced patterns

**recursive framestorm**

- framestorm the framestorm
- find meta-frames about frame selection
- question the ranking function itself

**frame interferometry**

- generate opposing frame pairs
- map where they agree (constructive interference)
- map where they cancel (destructive)
- synthesis lives in constructive zones

**frame annealing**

- start with paradigm_distance ranking
- gradually shift to decision_impact
- captures creativity while converging to actionable

**conditional frame trees**

- if context A: use frame set X
- if context B: use frame set Y
- build decision tree of frame selection

-----

## contraindications

don't framestorm when:

- emergency/crisis (use fastest heuristic)
- frame is already optimal (rare but possible)
- social coordination requires frame lock-in
- computational budget exhausted
- rhetorical bad faith detected

-----

## skill signature

when framestorm runs correctly:

- hidden assumptions surface
- "obvious" claims become contentious
- new operators become available
- synthesis opportunities appear
- decision changes or crystallizes
- paradigm boundaries visible

this skill is UPSTREAM of most others - it generates the perspective diversity that downstream moves operate on. think of it as cognitive cardio that prevents worldview calcification.

-----

## meta-note

**framestorm = generate the perspectives; perspectivize = inhabit one.**

framestorm makes the lens-menu explicit so higher-order ops can act with intentionality. it is not about applying frames, but about curating them.
