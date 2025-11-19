---
name: simulate
description: unfold the target forward in time by tracing plausible trajectories. preserve object identity; vary only dynamics, shocks, interactions, constraints. produce *multiple* futures with regimes, not a single prediction.
---

## tl;dr

simulate ≠ predict.  
simulate = **walk the dynamics manifold**.

moves you’re doing:

- **forward-propagate** current structure under plausible update rules  
- **ramify** (branch) at real uncertainty nodes  
- **inject shocks** and trace consequences  
- **track thresholds** and phase transitions  
- **map regimes** (attractors, collapses, oscillations)  
- **extract where decisions matter**

ramify = a strict subset of simulate (simulate = time-evolution + branching; ramify = logical/causal closure under frozen premises). integrate ramify’s discipline whenever branches derive from explicit premises, not vibes.

-----

## simulation types (full menu)

### **linear projection**
baseline continuation; holds rate parameters constant.  
use when: you want inertial trajectory.

### **branching / ramified simulation**
fork trajectories at high-uncertainty points; each fork = consequences of one assumption bucket.  
use when: you need to understand sensitivity.

### **shock simulation**
inject an event (positive or negative), propagate.  
use when: stress-testing.

### **policy / strategy simulation**
assume an intervention; unfold consequences under that policy.  
use when: comparing decisions.

### **multi-agent simulation**
each agent has its own state + update rules; system evolves via coupled dynamics.  
use when: relationships, orgs, negotiations.

### **threshold / phase-transition**
identify points where behavior abruptly flips (burnout, boredom, liquidity, capacity).  
use when: nonlinear systems.

### **ergodic / long-horizon drift**
model slow drifts, habits, identity shifts, compounding effects.  
use when: 3–30y arcs matter.

-----

## picking the right simulation

| purpose                                | use these modes                               |
|----------------------------------------|-----------------------------------------------|
| baseline / default future              | linear projection                              |
| uncertainty / sensitivity              | branching / ramified                           |
| robustness / failures                  | shock + threshold                              |
| comparing actions                      | strategy / policy                              |
| relationship or org dynamics           | multi-agent                                    |
| long-term identity, skills, drift      | ergodic                                        |

**generators**:

- vary actors, rate parameters, thresholds, resource levels  
- vary timing of exogenous events  
- vary feedback strength/delay  
- vary premise sets (ramify-style P → closure → branch)

-----

## signature

simulate(initial_state, horizon, modes…) → trajectories[]

- **initial_state:** minimal but complete snapshot of now  
- **horizon:** hours → weeks → months → years  
- **modes:** chosen simulation types (branching, shocks, etc.)

**contract:** no hallucinated objects or dynamics; transitions must come from mechanisms, constraints, or explicit premises.

-----

## process (step by step)

### step 0: define initial_state
name state variables:
- resources (time, attention, money, optionality, energetic buffer)  
- identity (motivation, coherence, entropy)  
- relational (trust, load, dependency)  
- constraints (childcare, deadlines, health)  
- invariants (non-negotiables)

---

### step 1: identify dynamics
what drives change?

- natural drifts (energy decays; novelty wanes; stress accumulates)  
- feedback loops (positive: momentum; negative: regulation)  
- delays/lag structures  
- constraints (caps, budgets, bottlenecks)  
- thresholds (burnout, boredom, plateau, fracture)

tie to ramify rule kits when appropriate:
- causal propagation  
- stock–flow  
- feedback  
- agent response (lucas check)  
- equilibrium closure

---

### step 2: choose simulation modes
usually choose 1–3:
- baseline  
- branching  
- shock  
- multi-agent  
- threshold  
- ergodic

ramify logic: whenever assumptions differ, freeze P and run separate closure branches.

---

### step 3: generate trajectories
for each trajectory:

1. **declare assumptions** (premises for this run)  
2. **propagate state forward**  
   - what increases? decreases? interacts? crosses thresholds?  
3. **ramify** at uncertainty points  
4. **respect constraints** (no impossible reversals or phantom resources)  
5. **update agents** if multi-agent

each trajectory must be **structurally distinct**, not cosmetic variation.

---

### step 4: identify regimes + transitions
label:

- regimes (excite → consolidate → drift; stability → fragility → collapse)  
- turning points (threshold crossings, shocks)  
- attractors (stable or oscillatory patterns)  
- failure modes (cascade, bottleneck, disintegration)

ramify-style fallout buckets: *obvious · novel · actionable · edge-case*.

---

### step 5: extract outputs
for each trajectory:

- **trajectory narrative**  
- **decision-cruxes**  
- **sensitive variables** (uncertainty that bifurcates)  
- **robust invariants** (across branches)  
- **leading indicators**  
- **guardrails** (if IND > THR → ACTION)

ramify output patterns: predictions, constraints, edge-cases, tests.

-----

## quality criteria

**coherence**  
- [ ] no contradictions with known constraints  
- [ ] transitions follow from mechanisms  

**branch integrity**  
- [ ] branches differ meaningfully  
- [ ] branch points tied to real uncertainties or premises  

**regime clarity**  
- [ ] identifiable phases  
- [ ] thresholds marked  
- [ ] attractors or collapses noted  

**decision relevance**  
- [ ] shows where choices matter  
- [ ] surfaces leverage points  

**ramify alignment**  
- [ ] premises explicit  
- [ ] closure follows rule kits  
- [ ] contradictions flagged, not smoothed over  

-----

## genre-specific patterns

### career / mission
- states: autonomy, energy, identity coherence, optionality  
- regimes: honeymoon → slog → plateau → bifurcation  
- thresholds: fatigue line, novelty decay  
- branches: team match, early signals, reorg shocks

### relationship / family
- states: trust, load, bandwidth  
- multi-agent updates: each agent’s policy shifts  
- regimes: alignment → oscillation → repair → divergence  
- shocks: sleep loss, stressors, competing commitments

### somatic / health
- states: thresholds, loads, recovery parameters  
- regimes: compensation → overshoot → crash  
- shocks: travel, illness  
- invariant: buffers > acute tools

### creative / project
- states: novelty, momentum, frustration  
- regimes: spark → exploration → swamp → refinement → polish  
- branch points: direction choice, scaffolding quality

-----

## anti-patterns

### single-path “prediction”
must output a **bundle**.

### hallucinated events
events must derive from dynamics, shocks, or premises.

### no thresholds
flat trajectories almost always miss real structure.

### ignoring agents
multi-agent systems require coupled updates.

### uncontrolled branching
ramify discipline: cap depth, maintain independence, avoid duplicates.

-----

## integration with other ops

**upstream:**  
- reframe (choose representation)  
- decompose (identify state variables)  
- ramify (freeze premises + derive principled branches)  
- perspectivize (define agent rules)

**downstream:**  
- attack (find failure modes)  
- test (push extremes)  
- operationalize (define metrics for regime detection)  
- prioritize (rank interventions)  
- integrate (merge insights across branches)

-----

## examples (small)

### example 1: simulate("indie book project", horizon=18mo, modes=[branching, threshold, ergodic])

**initial_state:**
- resources: 10hrs/week available, no deadline pressure, minimal financial runway
- identity: high initial motivation, unclear if idea has legs
- relational: solo project, no accountability structure
- constraints: day job limits deep work windows, family time fixed
- invariants: must maintain day job, cannot sacrifice health

**trajectory fast-start (momentum branch):**
- months 0–2: spark → high output → 30k words → momentum builds
- months 3–4: exploration phase → novelty sustains → 60k words
- month 5: threshold crossing (novelty decay) → swamp phase begins
- months 6–9: frustration → momentum loss → project stalls
- months 10–12: either abandonment or external deadline creates urgency
- regime: spark → exploration → swamp → (abandonment | completion)
- decision-crux: whether external structure (editor, deadline) arrives before abandonment
- sensitive variable: early reader feedback quality; whether momentum survives swamp

**trajectory slow-burn (sustainable branch):**
- months 0–3: spark → steady 5hrs/week → 15k words → identity reinforcement
- months 4–9: exploration → sustained pace → 50k words → habit formation
- months 10–12: refinement phase → quality focus → positive feedback loops
- months 13–18: polish → completion → leverage (opens new options)
- regime: spark → exploration → refinement → polish → leverage
- decision-crux: whether habit formation occurs before motivation decay
- sensitive variable: weekly consistency; whether progress feels meaningful

**trajectory abandoned (drift branch):**
- months 0–2: spark → initial excitement → 10k words
- months 3–4: competing priorities emerge → energy drain → project drifts
- months 5–6: identity friction (am I really a writer?) → disengagement
- months 7+: project becomes source of guilt → avoidance → abandonment
- regime: spark → drift → identity friction → abandonment-attractor
- threshold: if 3 consecutive weeks with zero progress → abandonment risk
- guardrail: if progress stalls for 4 weeks → external accountability trigger

**ergodic drift (long-horizon):**
- months 0–6: project exists in background, identity slowly shifts
- months 7–12: either identity solidifies ("I'm a writer") or erodes ("I'm not")
- months 13–18: identity outcome determines whether project resumes or permanently abandoned
- insight: long-term identity drift more predictive than short-term motivation

**invariants across branches:**
- day job constraint persists (cannot quit to write full-time)
- health boundaries non-negotiable
- family time protected

**leading indicators:**
- momentum: word count velocity in first 8 weeks; whether swamp phase is navigable
- sustainability: weekly consistency; habit formation signals

---

### example 2: simulate("moving in with partner", horizon=12mo, modes=[multi-agent, threshold, shock])

**initial_state:**
- resources: both have stable income, shared space available, logistics manageable
- identity: both committed, but living styles unknown, boundaries untested
- relational: high trust baseline, different cleanliness standards, different social needs
- constraints: lease commitments, cannot easily reverse
- invariants: relationship health non-negotiable, both need autonomy

**trajectory alignment (smooth branch):**
- months 0–2: honeymoon → excitement → routines form → positive feedback
- months 3–4: minor friction points → negotiation → new equilibrium
- months 5–6: stability → deeper intimacy → system optimization
- months 7–12: consolidated pattern → relationship strength increases
- regime: alignment → minor oscillation → repair → stability
- multi-agent update: both agents adapt policies; trust increases; load distributes
- decision-crux: whether initial friction points are navigable vs. fundamental mismatch
- sensitive variable: communication quality during first friction episodes

**trajectory oscillation (stress branch):**
- months 0–1: honeymoon → initial excitement
- months 2–3: boundary violations emerge → trust erosion → conflict
- months 4–5: repair attempts → partial recovery → new conflict
- months 6–8: oscillation pattern → relationship stress → consideration of separation
- months 9–12: either system repair (therapy, new rules) or divergence
- regime: alignment → oscillation → (repair | divergence)
- threshold: if trust drops below baseline for 6+ weeks → divergence risk
- multi-agent update: both agents become defensive; policies conflict; load amplifies
- decision-crux: whether repair mechanisms (therapy, structured negotiation) arrive in time
- guardrail: if trust metric drops below threshold for 4 weeks → intervention trigger

**trajectory divergence (mismatch branch):**
- months 0–2: initial excitement masks incompatibilities
- months 3–4: fundamental mismatches emerge (social needs, space usage, routines)
- months 5–6: negotiation fails → resentment builds → identity friction
- months 7–9: divergence → separate lives under same roof → relationship decay
- months 10–12: exit consideration → separation planning
- regime: alignment → mismatch → divergence → exit-attractor
- multi-agent update: both agents withdraw; policies become adversarial
- decision-crux: whether incompatibilities are addressable or fundamental
- sensitive variable: early boundary negotiation success; whether both agents can adapt

**shock simulation (job loss):**
- base trajectory: stable alignment
- shock: partner loses job → financial stress + routine disruption
- propagation: financial anxiety → boundary testing → trust stress → conflict amplification
- recovery: either strengthens bond (shared problem-solving) or reveals fragility
- insight: stress reveals underlying system robustness vs. fragility
- guardrail: if financial stress persists >2mo → structured support system activation

**invariants:**
- both need autonomy (non-negotiable)
- relationship health requirement persists
- cannot easily reverse (lease, logistics)

**leading indicators:**
- alignment: communication quality in first 3 friction episodes
- oscillation: whether repair attempts succeed or fail
- divergence: early boundary negotiation outcomes

---

### example 3: simulate("strength training routine", horizon=6mo, modes=[baseline, threshold, shock])

**initial_state:**
- resources: gym access, 3hrs/week available, baseline fitness moderate
- identity: wants to be "strong", unclear if habit will stick
- constraints: cannot train daily (recovery needed), work schedule variable
- invariants: must maintain other activities, cannot sacrifice sleep

**trajectory baseline (current approach):**
- weeks 0–4: initial motivation → 3x/week → progress → positive feedback
- weeks 5–8: novelty decay → consistency drops → 2x/week → progress stalls
- weeks 9–12: frustration → either re-commitment or abandonment
- weeks 13–24: either habit formation (sustains) or drift (abandons)
- regime: motivation → decay → (habit-formation | abandonment)
- threshold: if consistency drops below 2x/week for 3 weeks → abandonment risk
- decision-crux: whether habit forms before motivation fully decays
- sensitive variable: early progress visibility; whether routine feels sustainable

**trajectory optimized (structured branch):**
- weeks 0–4: structured program → 3x/week → measurable progress → identity reinforcement
- weeks 5–8: habit formation → routine becomes automatic → consistency sustains
- weeks 9–12: adaptation → strength increases → positive feedback loops
- weeks 13–24: consolidation → new baseline → optionality expands (can do harder things)
- regime: structure → habit → adaptation → consolidation → leverage
- threshold: habit formation window (weeks 4–8) determines long-term success
- decision-crux: whether structure (program, tracking) arrives before motivation decay
- sensitive variable: program quality; whether progress is measurable

**trajectory overreach (injury branch):**
- weeks 0–3: high motivation → 4–5x/week → rapid progress → overconfidence
- week 4: threshold crossing (recovery capacity exceeded) → minor injury
- weeks 5–8: forced rest → frustration → routine disruption → momentum loss
- weeks 9–12: either careful return (sustainable) or abandonment
- regime: motivation → overreach → injury → (recovery | abandonment)
- threshold: recovery capacity vs. training load
- insight: buffers (recovery, sleep) more important than acute intensity
- guardrail: if pain signals emerge → reduce load immediately

**trajectory shock (illness/travel):**
- base: stable optimized trajectory
- shock: 2-week illness → forced rest → routine disruption
- propagation: routine breaks → habit decay → motivation loss → consistency drops
- recovery: either quick return (habit strong) or slow drift (habit weak)
- weeks to recovery: 2–4 weeks depending on habit strength pre-shock
- regime shift: consolidation → disruption → (quick-recovery | slow-drift)
- insight: habit strength before shock determines recovery trajectory
- guardrail: if routine disrupted >2 weeks → structured re-entry protocol

**invariants:**
- recovery capacity limits training frequency (cannot train daily)
- sleep requirement persists (cannot sacrifice for training)
- other activities must be maintained

**leading indicators:**
- habit formation: consistency in weeks 4–8; whether routine feels automatic
- overreach: recovery quality; whether sleep/stress managed
- shock recovery: habit strength pre-disruption; structured re-entry success

-----

## meta-note

simulate = **temporal reasoning**.  
ramify = **premise closure**.  

simulate exposes the *shape of future possibility*.  
ramify keeps branches logically clean.

together: a forward model with disciplined branching instead of vibes.