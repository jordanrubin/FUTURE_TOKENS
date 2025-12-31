---
name: handlize
description: Extract the executable residue from an argument or map by isolating handles—concepts with operational grip—while discarding rhetorical mass.
---

# handlize

handlize strips rhetoric, tests novelty, and returns only **handles**—concepts or distinctions with operational grip. It answers: **"what here could actually change what I do?"** Not summary, not critique—just residue extraction.

## Definition: what counts as a handle

A handle is a concept, frame, or distinction that:
- **Constrain or enable action:** changes what decisions or designs are viable.
- **Operationalizable:** can be measured, modeled, or intervened on.
- **Non-rhetorical:** not merely a justification or applause light.

Each handle is classified by context as **live** (executable, low decay), **burned** (real referent but term degraded), or **dead** (no operational content).

## Dials

| Dial | Range | Purpose | Failure modes |
| --- | --- | --- | --- |
| **Extraction strictness** | permissive → strict | How aggressively to discard non-executable material | Too permissive → summary drift; too strict → false negatives |
| **Novelty threshold** | contextual → primitive | How new a concept must be | Too low → repackaged common sense; too high → only research-grade ideas |
| **Operational demand** | sketch → concrete | How fully the handle must be cashed out | Too low → vibes pass; too high → early ideas rejected |
| **Burned handle policy** | ignore / drop / rehabilitate | How to treat socially degraded terms | Ignore → buzzword drift; drop → lose real phenomena; rehabilitate → raises operational demand for burned terms |

**Implicit dial: context.** Always state which domain/audience/problem frame is assumed; handle status is context-relative.

## When to use
- A text feels dense but unclear which ideas change action.
- You need to separate executable concepts from rhetoric before planning.
- You want to rehabilitate or discard buzzwords based on operational content.

## When not to use
- You need a summary or critique (use @synthesize / @antithesize).
- There is no concrete situation or audience—context-free inputs make status classification meaningless.

## Core operation (high-level)
1. **Strip rhetorical mass:** drop throat-clearing, prestige adjectives, moral signaling, and audience-calibration fluff.
2. **Identify candidate handles:** claims, frames, or distinctions that would shift choices or protocols.
3. **Test candidates:** actionability, operationalizability, novelty relative to context.
4. **Classify status:** live vs burned vs dead (context-aware). Burned terms must be operationalized to survive.
5. **Check gestalt risk:** if decomposition loses causal grip, preserve as a single handle and flag **gestalt-dependent**.
6. **Output executable residue:** only handles that pass the tests; allow null output if none survive.

## Process (explicit steps)
1. **Set context + dials:** state assumed domain/audience/problem; set strictness, novelty, operational demand, burned-handle policy; note interactions (rehabilitate ⇒ higher operational bar for burned terms).
2. **Remove rhetorical mass:** excise non-load-bearing rhetoric; keep just enough wording to preserve candidate meaning.
3. **Harvest candidates:** pull any concept, frame, or distinction implying different decisions, models, or interventions.
4. **Evaluate each candidate:**
   - Actionability: would this change a decision boundary, design, or protocol?
   - Operationalizability: can it be expressed in variables, mechanisms, metrics, or levers?
   - Novelty: is it new to this context vs just renamed common sense?
5. **Classify status (context-relative):**
   - **Live:** executable, underused, low decay.
   - **Burned:** real referent but term degraded; keep only if operationalized (and raise operational demand when policy = rehabilitate).
   - **Dead:** no operational content; drop.
6. **Gestalt check:** if breaking into parts removes causal grip, keep it as one handle and mark **gestalt-dependent**.
7. **Emit residue:** use the output schema; include a null result if nothing survives.

## Output schema (required)

For each surviving handle:
- **handle:** concise formulation
- **status:** live | burned | dead
- **context:** assumed domain/audience
- **why it matters:** what action, model, or decision it enables
- **operationalization sketch:** variables, mechanism, possible measurement or test (for live/burned)
- **gestalt-dependent:** yes | no

If no handles survive: state **"no executable residue found"** and briefly why.

## Quality criteria
- States context and dial settings up front.
- Discards rhetoric without erasing candidate meaning.
- Distinguishes live vs burned vs dead with justification.
- Raises operational bar when rehabilitating burned terms.
- Flags gestalt dependence instead of fragmenting useful constructs.
- Allows null output; no forced handles.

## Common failure modes to avoid
- **Summary drift:** turning into a tidy recap instead of residue extraction.
- **Buzzword laundering:** relabeling burned terms without mechanism.
- **False novelty:** treating reframes of common sense as new handles.
- **Over-rehabilitation:** rescuing concepts that were always empty.
- **Over-pruning:** strictness so high that viable proto-handles are dropped.

## Examples (abbreviated)
- **Live:** "orgs as simulable dynamical systems, not static snapshots" → enables modeling flows and interventions.
- **Burned (rehabilitated):** "alignment" in corporate strategy → only keep if tied to measurable gradient matching between stated objectives and incentives.
- **Dead:** "future-proofing" → no operational content; drop.

