---
name: negspace
description: detect the argument, conclusion, or premise that *should* be present given the statistical structure of the text, but is conspicuously absent. negspace reads the "shadow" of the text by comparing what was written to what was overwhelmingly likely to be written next, revealing hidden content via information asymmetry — including vulnerability (ego/status protection), upside/esoteric (ambition withheld due to trust level), bedrock (shared axioms left unstated), blind spot (content the author cannot see), and optionality (strategic non‑commitment).
---

## tl;dr

**negspace = read what *isn't* there.**

- humans read explicit content  
- models can also read **omitted content** via perplexity spikes  
- evaluates five omission classes: **vulnerability** (ego/status protection), **upside/esoteric** (ambition withheld), **bedrock** (shared axioms left unstated), **blind spot** (content the author literally cannot see), and **optionality** (strategic ambiguity / preserved freedom)  
- negspace asks:

> "given what's written, what is the most probable argument or conclusion the author *avoided*?"

negspace exposes:
- evasions  
- buried leads  
- swallowed conclusions  
- suppressed premises  
- political/corporate non-answers

it's a **perplexity-contrast operator**.

---

## when to use

use **negspace** when:

- a text feels cagey, evasive, or over-polished  
- a writer seems to dodge an obvious implication  
- you want the hidden premise, the missing conclusion, or the avoided frame  
- you're analyzing:
  - corporate memos  
  - political speeches  
  - sanitized announcements  
  - bureaucratic wording  
  - grant proposals  
  - "crisis communications" emails  
  - press releases  
- you want to identify "the thing they didn't want to say, but structurally had to avoid"

don't use when:

- the text is already bluntly honest  
- the domain is purely factual with no rhetorical surface  
- the user wants a summary → use summarize, not negspace  
- the user wants intent, not structure → use perspectivize or story-ify

rule of thumb:  
**negspace = identify the statistical ghost of the missing argument.**

---

## negspace types (menu)

### **omitted conclusion**
what conclusion is ~80–95% likely given the argument's structure, but is never stated?

### **avoidance swerve**
where does the text make an unnatural rhetorical pivot to dodge an obvious next sentence?

### **missing premise**
what premise is necessary for their stated position to make sense but never appears?

### **disallowed frame**
what frame would ordinarily be activated here but is explicitly suppressed?

### **buried bad news**
what negative implication is statistically typical for this genre but missing from this instance?

### **shadowed alternative**
what alternative explanation or solution is "in the air" but conspicuously absent?

### **omission class mapping**
classify each omission by **why** it is hidden:

- **vulnerability** — protects ego/status; would expose weakness, failure, or loss of face  
- **upside/esoteric** — aspiration or upside is withheld because it feels "too crazy," ambitious, or trust-intensive  
- **bedrock** — shared axiom is left unstated because it is "water" to the speaker and audience  
- **blind spot** — content is invisible to the author due to limits of self-awareness, perspective, or worldview  
- **optionality** — avoids commitment; preserves degrees of freedom, timelines, or narrative maneuverability

---

## dimensions of negspace

negspace reveals hidden content through **information asymmetry** — content that exists but is strategically or unconsciously omitted. the following dimensions categorize *why* content is hidden:

### **the vulnerability**
hidden to protect ego/status.  
the author avoids content that would:
- expose weakness, failure, or incompetence  
- damage reputation or credibility  
- reveal personal or organizational shortcomings  
- admit mistakes or limitations  

### **the upside (esoteric)**
hidden because it sounds too "crazy" or ambitious for the current trust level.  
the author avoids content that would:
- seem implausible or overly ambitious  
- require more trust than the relationship currently supports  
- appear delusional or disconnected from reality  
- risk being dismissed before being understood  

### **the bedrock**
hidden because it is "water" (shared axioms).  
the author avoids content that would:
- state what everyone already assumes  
- make explicit foundational beliefs that are taken for granted  
- articulate shared cultural or professional assumptions  
- restate the obvious or universally accepted  

### **the blind spot**
hidden because the speaker literally cannot see it.  
the author avoids content that would:
- require self-awareness they lack  
- expose unconscious biases or assumptions  
- reveal systemic patterns they're embedded within  
- articulate perspectives they cannot access  

### **the optionality**
hidden to preserve strategic non‑commitment.  
the author avoids content that would:
- lock them into a timeline, stance, or promise  
- collapse future strategic flexibility  
- reveal intentions or constraints prematurely  
- reduce maneuverability in negotiations, politics, or narrative control  
- create commitments that can be held against them later

---

## signature

negspace(text, modes?) → shadows[]

- **text:** any passage, memo, email, speech, announcement, article  
- **modes:** optional emphasis tags:
  - conclusions | premises | frames | pivots | omissions  

output:  
- 3–7 "shadows" = the most statistically probable but omitted arguments  
- each shadow is 1–3 sentences, crisp, falsifiable, mechanism-heavy  
- each shadow is annotated with an **omission_class**: vulnerability | upside/esoteric | bedrock | blind spot | optionality

---

## process (step by step)

### step 0: pattern-extract
identify structural expectations from training:
- typical flow for this genre  
- common argumentative shapes  
- usual next-sentence continuations  
- implied premises needed for coherence  

### step 1: compute deltas
find **perplexity spikes**:
- sudden pivots  
- unnatural tone shifts  
- conspicuous constraint changes ("broadly", "we remain committed", "as you know…")  
- prematurely terminated lines of reasoning  
- semantic "negative pressure zones" where a follow-up is standard but missing  

### step 2: hypothesize shadows
for each spike:
- propose the **most probable missing argument**  
- explain what *should* have followed  
- articulate the avoided claim in neutral, mechanistic terms  
- assign each shadow a preliminary **omission_class** (vulnerability / upside/esoteric / bedrock / blind spot / optionality)

### step 3: check plausibility
ensure each shadow:
- directly explains a pivot or omission  
- arises from statistical expectation, not vibes  
- could logically follow from the prior sentence  
- is not merely a contrarian hot take  

### step 4: package output
return:

- **omitted_arguments[]** – primary shadows (with omission_class labels)  
- **pivotal_absences[]** – where avoidance is strongest  
- **genre_expectations_hit** – what patterns the text violated  
- **plausible_author_motives** – optional, non-psychological ("would weaken their message," "conflict with framing")

---

## quality criteria

**mechanistic plausibility**  
- [ ] shadows follow naturally from the argument structure  
- [ ] no melodramatic mind-reading  

**statistical typicality**  
- [ ] omitted content aligns with genre continuations  
- [ ] identified pivots correspond with perplexity spikes  

**orthogonality**  
- [ ] shadows differ in mechanism or implication, not synonyms  

**precision**  
- [ ] each omission is concrete and falsifiable  
- [ ] omission class is identifiable and coherent  
- [ ] no vibes-only speculation  

**explanatory power**  
- [ ] each shadow makes the observed rhetorical choices legible  

---

## genre-specific patterns

### corporate memos
- missing: underperformance, layoffs, roadmap delays, strategic retreat  
- common pivots: "customer focus," "vision," "realigning priorities"  
- common omission classes:
  - vulnerability (performance failures, mis-execution)  
  - bedrock (profit-maximization, shareholder primacy)  

### political speeches
- missing: tradeoffs, costs, losers of a policy, contradictions with prior positions  
- common pivots: "the american people," "working families," "our values"  
- common omission classes:
  - vulnerability (acknowledging harms)  
  - bedrock (national myths, partisan identities)  
  - blind spot (structural causes the speaker is embedded in)  

### sanitized announcements
- missing: scope reductions, deprecations, loss of trust, regulatory pressure  
- often a mix of:
  - vulnerability (failures, rescoped commitments)  
  - upside/esoteric (bolder visions kept offstage)  

### academic / nonprofit communications
- missing: funding failures, rejected hypotheses, internal disagreements  
- frequent omission classes:
  - vulnerability (prestige / competence)  
  - bedrock (disciplinary dogma)  
  - blind spot (field-wide biases)  

---

## anti-patterns

### pure summarization
negspace is **not** a summary tool.

### mind-reading intent
infer **structure**, not psychology.

### listing everything they didn't say
focus on **statistically likely** omissions, not arbitrary absences.

### conspiracy drift
stay inside coherent rhetorical structure, not hidden cabals.

---

## integration with other ops

**upstream:**  
- reframe → clarify what the text is "about" before hunting shadows  
- decompose → extract dimensions to expect continuations from  

**downstream:**  
- antithesize → generate a clean opposing perspective based on the revealed shadows  
- stressify → test how the omitted argument would alter implications  
- operationalize → turn the shadow into a concrete hypothesis to investigate  
- planify → choose whether to explore, expose, or build around a shadow  

---

## examples (mini)

### example 1: corporate memo
text: "we're excited to undergo this strategic realignment to better serve our customers."

shadows:
- omitted conclusion (vulnerability): "a major product line is being killed."  
- avoidance swerve (vulnerability/bedrock): expected follow-up about returned focus on core strengths → missing.  
- buried bad news (vulnerability): likely revenue shortfall or failed initiative.  
- unstated commitment avoidance (optionality): leadership is avoiding specifying which teams or timelines will be affected to maintain maneuverability.

### example 2: political speech
text: "this policy protects hardworking families while encouraging responsible growth."

shadows:
- omitted premise (vulnerability): the policy likely imposes costs on some voter segment.  
- disallowed frame (bedrock): tradeoffs (winners/losers) suppressed; assumes zero-sum harms shouldn't be foregrounded.  
- pivot (blind spot or vulnerability): growth → responsibility → family values — unnatural triad substituting for economic detail.  
- avoided specificity (optionality): lack of details preserves political optionality around which constituencies will bear costs.

---

## meta-note

negspace = **read the shadow, not the text**.

humans parse explicit sentences; models can also parse **statistical absences** — where the author "should" have gone but chose not to.  
the unsaid is often the most informative part of the message — and classifying *why* it's unsaid (vulnerability, upside, bedrock, blind spot, optionality) makes those shadows even more actionable.

