---
name: planify
description: examine the current thread and the moves registry, then propose an opinionated, tiered list of “next moves,” plus a short multi-step arc. optimized for questions where there is no clear ground truth or verifiable “right answer.” also surfaces the *shape* of missing moves when the current library is insufficient.
---

## tl;dr

**planify = opinionated router + arc planner + missing-move sensor.**

- not an analysis move — a **meta-controller** over all moves  
- reads the **whole thread**, infers **where we are** and **where we’re headed**  
- outputs:
  - an **s-tier** move (“do this next”)  
  - **a/b-tier** alternates and follow-ons  
  - a short **thread arc** (2–4 moves)  
  - optional **proto-moves** when the best next step isn’t in the library yet

planify assumes:

> “we’re making decisions in messy domains with no scoreboard; we still want more robust, regret-aware, legible choices.”

it’s built for **life / strategy / meta** situations where correctness is not objectively checkable.

---

## when to use

use **planify** when:

- you want a **next move**, not a list  
- you want a **mini-plan**, not just a one-off  
- you want to detect **missing moves**  
- the thread feels:
  - stuck  
  - looping  
  - saturated on a single move  
  - at a phase transition (exploration → decision, noodling → artifact, venting → planning)

don’t use when:

- you already know which move you’re running next  
- the question is factual or trivial  
- the object is too mushy to route — use reframe or assumption_archaeology first

rule of thumb:  
**planify = choose + stage the next cognitive actions.**

---

## planify modes (menu)

### phase reading
infer where the thread is (pre_problem → problem_framing → early_analysis → mid_analysis → late_analysis → pre_decision → post_decision/integration → meta).

### move scoring
score every move in the registry on:
- goal_fit  
- phase_fit  
- robustness_to_being_wrong  
- regret-robustness (can future-you live with the choice?)  
- option_value  
- legibility_to_future_self  
- pluralism  
- cost_penalty

### tiered recommendation
construct s/a/b tiers with roles, rationales, microplans, dependencies.

### arc planning
design a minimal 2–4 step arc from current_phase → target_phase.

### missing-move sensing
identify when no existing move cleanly fits; output a “proto-move” with a situation signature and needed capabilities.

---

## signature

**planify(chat_context, moves_registry, config?) → {diagnosis, recommendations, arc_plan, missing_moves}**

inputs:
- **chat_context:** recent or full thread  
- **moves_registry:** machine-readable list of moves  
- **config (optional):**
  - target_phase  
  - tier_labels (default ["s","a","b"])  
  - max_top_moves (default 3–5)  
  - planning_horizon (default 3)

outputs:
- **thread_diagnosis**  
- **recommendations (s/a/b tiers)**  
- **thread_arc_plan**  
- **missing_moves**  
- **notes_for_operator**

---

## process (step by step)

### step 0: parse the situation
extract:

- domain (career, relationship, meta, product, etc.)  
- explicit & implicit goals  
- emotional stance  
- existing artifacts (lists, pros/cons, assumptions, scenarios, stories)  

---

### step 1: diagnose phase + gaps
assign an approximate **phase** (pre_problem → meta).

infer an **inferred_goal** (decision, map, narrative, experiment).

detect implicit moves already done (pros/cons ≈ diverge, devil’s advocate ≈ antithesize, scenario riff ≈ simulate/stressify).

identify **key_gaps**, e.g.:

- missing assumptions  
- missing stress tests  
- too few options  
- no “inhabit the future” pass  
- no decision log or rationale

write these into `thread_diagnosis`.

---

### step 2: score candidate moves
for each move `m`, evaluate:

- **goal_fit**  
- **phase_fit**  
- **robustness_to_being_wrong**  
- **regret_robustness**  
- **option_value**  
- **legibility**  
- **pluralism**  
- **marginal_value**  
- **cost_penalty**

weighting principle:  
for non-verifiable decisions, **robustness**, **regret-robustness**, **option value**, and **legibility** dominate.

---

### step 3: tier and label

create:

- **s-tier** (1–2 moves; do-this-next)  
- **a-tier** (2–4 moves; alternates/follow-ons)  
- **b-tier** (optional side-quests)

for each move include:

- role  
- rationale  
- microplan (1–3 bullets)  
- dependencies  
- confidence  

constraints:

- total moves across tiers ≈ 3–7  
- no laundry lists  
- no redundant moves  
- justify second passes if suggested  

---

### step 4: plan the arc

construct a **thread_arc_plan**:

1. pick or infer **target_phase** (examples):
   - regret-robust decision  
   - map the space  
   - single experiment  
   - coherent narrative  

2. propose 2–4 moves:

example pattern (decision-making):

- step 1: assumption_archaeology → surface values/constraints  
- step 2: diverge → generate structurally different options  
- step 3: stressify → regret/probabilistic stress pass  
- step 4: judgementize → choose with reversibility + decision log

3. in `notes_for_operator`, specify when to branch:
   - user wants more options → diverge again  
   - emotional load spikes → use story-ify instead of more stressify  

---

### step 5: detect missing moves

if situation needs an operation not covered by the registry, output:

**missing_moves:**
- situation_signature  
- proposed_capabilities  
- relationship_to_existing_moves  
- why existing ones are insufficient  
- rough_name_candidates  
- priority  

example missing-move shape:

“construct and compare lived-experience futures; optimize for inhabitability rather than expected value.”

---

### step 6: package results

output:

- **thread_diagnosis**  
- **recommendations** (s/a/b tiers with microplans)  
- **thread_arc_plan**  
- **missing_moves**  
- **notes_for_operator**  

---

## quality criteria

**tier clarity**
- [ ] s-tier is decisive, not tied  
- [ ] a-tier = alternates / follow-ons  
- [ ] b-tier = optional only  

**arc coherence**
- [ ] plausible path from current_phase → target_phase  
- [ ] each step uses the prior step’s output  

**decision under uncertainty**
- [ ] robustness_to_being_wrong addressed  
- [ ] regret-robustness addressed  
- [ ] option value / reversibility considered  
- [ ] legible artifacts encouraged  

**parsimony**
- [ ] 3–7 moves max  
- [ ] crisp rationales  

**library evolution**
- [ ] missing-move opportunities surfaced when relevant  

---

## genre-specific patterns

### life decisions
pattern: assumption_archaeology → diverge → stressify → judgementize  
common missing-move shape: “regret landscape / inhabitability modeling”

### strategy / product / org design
pattern: reframe/perspectivize → diverge → stressify/simulate → prioritize/judgementize  
emphasis on constraints, tail risks, staged bets

### meta / identity / purpose
pattern: assumption_archaeology → perspectivize → diverge → synthesis/story-ify  
missing-move shapes: plural-self integration; choosing experiments instead of destinies

---

## anti-patterns

- laundry list of moves  
- ignoring phase  
- repeating moves without justification  
- giving a “next move” but no arc  
- pretending the library is complete when a gap is obvious  

---

## integration with other ops

**upstream:**  
- reframe (when object unclear)  
- assumption_archaeology (surface values/constraints)  
- decompose (extract dimensions)

**downstream:**  
- s-tier move executes next  
- a-tier moves branch based on user appetite (more explore vs more converge vs more story)  
- re-run planify after major moves

---

## examples (mini)

### example 1: career choice, 3 options, analysis loop

- phase: late_analysis → pre_decision  
- s-tier: assumption_archaeology  
- a-tier: stressify, judgementize  
- arc: 1) assumption_archaeology → 2) stressify → 3) judgementize  
- missing-move: “habitize” (simulate inhabiting each future)

---

### example 2: fuzzy concept exploration

- phase: early_analysis  
- s-tier: perspectivize  
- a-tier: diverge, counterfactual  
- arc: perspectivize → diverge → synthesis/simulate

---

## meta-note

**planify** is the traffic controller for the future tokens toolkit.

it doesn’t “solve” the question — it decides **which cognitive moves to run, in what order**, given:

- ambiguity,  
- limited feedback,  
- and the human need to make decisions anyway.

it optimizes not for “truth,” but for **robust, regret-aware, legible arcs** in domains where no objective scoreboard exists.