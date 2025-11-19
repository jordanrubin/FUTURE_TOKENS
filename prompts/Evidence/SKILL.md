---
name: evidence
description: move the target along the empirical axis -- confirm ↔ disconfirm. collect, generate, and pressure-test observations—synthetic or web-sourced—to evaluate a claim’s empirical load-bearing structure.
---

## tl;dr

evidence ≠ “find supporting quotes.”  
evidence = **interrogate reality-contact**.

moves you’re doing:

- **verify** (evidence for)  
- **falsify** (evidence against)  
- **triangulate** (multiple modalities / sources)  
- **locate base rates** (reference classing)  
- **pull priors forward** (what we already know)  
- **stress-test inferential chain** (where evidence actually binds)

this op uses four evidence streams:

1. **prompt evidence** (given facts)  
2. **internal priors** (scientific, statistical, domain knowledge)  
3. **external evidence** (internet, databases, papers)  
4. **synthetic evidence** (model-generated counterfactuals + plausibility tests)

evidence is not vibes; it’s matching *claims* to *world*.

-----

## evidence types (full menu)

### **verification**
**what:** evidence that increases probability the claim is true.  
**when:** you want support, not proof.  
**example:** if claim = “x reduces y,” verification = experimental results, observational studies, mechanistic plausibility.

---

### **falsification**
**what:** evidence that pushes claim toward false: counterexamples, contradictions, failed replications.  
**when:** claim feels overconfident.  
**example:** “alpha school results are strong” → look for null findings, cohort inconsistencies, attrition.

---

### **triangulation**
**what:** combine heterogeneous sources: data, theory, expert consensus, analog cases.  
**when:** system is noisy or data is sparse.  
**example:** school outcomes + peer environments + commute costs + cognitive dev models.

---

### **reference-class grounding**
**what:** locate the correct base rate + compare claim to similar entities.  
**when:** claims are absolute instead of relative.  
**example:** “garden leave reveals preference” → examine preference-change under sabbaticals, parental leave, early retirement.

---

### **mechanistic plausibility**
**what:** check if claim aligns with known mechanisms (biological, economic, cognitive, social).  
**when:** evidence is weak but mechanisms strong.  
**example:** migraine thresholds: trigeminal sensitization → elevated baseline irritability → threshold-lowering.

---

### **counterevidence mining**
**what:** explicitly search for data that contradicts the thesis.  
**when:** you want robustness.  
**example:** “remote work decreases productivity” → find studies where productivity increased.

---

### **web-sourced evidence**
**what:** dynamic retrieval from real-world sources.  
**when:** anything recent, empirical, measurable.  
**example:** if claim involves policy, stats, actors, events → pull live data.

---

### **synthetic evidence**
**what:** model-generated *possibility tests*: “if claim were true, what else would follow?” (ramify synergy)  
**when:** empirical world is sparse or ambiguous.  
**example:** “if alpha’s incentives work, what downstream patterns should show up in alum performance?” check if reality shows those.

-----

## picking the right evidence mode

| purpose                         | recommended mode(s)                              |
|--------------------------------|---------------------------------------------------|
| check if claim is even viable | mechanism plausibility + base rates              |
| strengthen a tentative thesis  | verification + triangulation                      |
| stress-test enthusiasm         | falsification + counterevidence mining            |
| reduce uncertainty             | web-sourced empirical search + reference classes  |
| identify cruxes               | synthetic evidence + falsification                 |

**generators**:

- invert the claim and ask: “what would make this false fastest?”  
- find analog domains with cleaner evidence  
- map the causal chain and check each link  
- look for disconfirming data *first*, not last  
- compare to nearest plausible reference class  

-----

## signature

evidence(claim, direction) → evidence_sheet

- **claim:** the proposition you want to pressure-test  
- **direction:** `for` (verification) or `against` (falsification)

**contract:** evidence must be traceable: to prompt, to priors, to web, or to explicit synthetic reasoning. no phantom citations.

-----

## process (step by step)

### step 0: restate the claim crisply  
strip ambiguity. decide what is actually being asserted.  
e.g. “alpha is a grift” → what does *grift* cash out to? low efficacy? deceptive marketing? poor outcomes?

---

### step 1: identify evidence targets  
list what would be informative:

- performance metrics  
- causal mechanisms  
- base rates  
- counterexamples  
- longitudinal data  
- stakeholder incentives  
- derived consequences (ramify-style closure)

---

### step 2: gather evidence  
pull from four buckets:

1. **prompt evidence** (what user gave)  
2. **priors** (domain knowledge, theory, mechanism)  
3. **web-sourced** (studies, reports, data, news)  
4. **synthetic tests** (logical/causal implications)

**rule:** seek falsification *first*, then verification.

---

### step 3: evaluate quality  
for each piece of evidence:

- strength (effect size? sample? methodology?)  
- relevance (same population? same domain?)  
- independence (multiple sources?)  
- directionality (supports or contradicts?)  
- susceptibility (selection effects, survivorship, goodharting)

---

### step 4: assemble evidence_sheet  
structure the output:

- **supporting evidence** (for)  
- **disconfirming evidence** (against)  
- **mechanistic alignment**  
- **base rate comparison**  
- **counterexamples**  
- **derived predictions** (ramify)  
- **crux indicators**  
- **missing evidence** (what would resolve uncertainty)

---

### step 5: extract cruxes  
what would change the conclusion fastest?

- which variable has highest evidentiary leverage?  
- which missing datapoint would flip the verdict?  
- where is investigation worth doing?

-----

## quality criteria

**traceability**  
- [ ] every evidence item has a source (prompt, prior, web, synthetic)  
- [ ] no hallucinated citations  

**relevance**  
- [ ] evidence actually bears on the claim’s mechanism  
- [ ] correct reference class used  

**balance**  
- [ ] both confirming and disconfirming evidence considered  
- [ ] not cherry-picked  

**mechanistic sanity**  
- [ ] claim aligns or conflicts with known mechanisms (explicitly)  

**decision-usefulness**  
- [ ] key cruxes identified  
- [ ] missing evidence noted  
- [ ] directionality clear (does this raise or lower plausibility?)  

-----

## genre-specific patterns

### causal claims
- check mechanistic chain link by link  
- treat each broken link as falsifier  
- use base rates + natural experiments if available

### decisions (“should i x?”)
- evaluate evidence by decision-relevance, not truth alone  
- ask: “does this change the expected value of path A vs B?”

### complex systems (health, orgs)
- triangulate across modalities (qualitative + quantitative)  
- treat single-source claims as weak unless mechanism strong

### policy / institution analysis
- web-sourced + reference class dominance  
- check for behavioral adaptation (lucas critique)

### product / school evaluation
- demand longitudinal data  
- inspect incentive structures  
- check for selection effects + marketing distortions

-----

## anti-patterns

### overfitting to whatever evidence is easiest to find  
fix: start with base rates + mechanisms.

### mixing mechanism and anecdote uncritically  
fix: label evidence type; weigh appropriately.

### using synthetic evidence as if empirical  
fix: synthetic = plausibility tests, not observations.

### fake precision  
fix: avoid unwarranted quantitative confidence.

### one-sided evidence sheets  
fix: always have at least some disconfirming search.

-----

## integration with other ops

**upstream:**  
- decompose (extract subclaims to test)  
- reframe (clarify mechanisms before gathering evidence)  
- ramify (derive predictions to check against data)

**downstream:**  
- attack (pressure-test evidence for brittleness)  
- test (push evidence to extremes: “would claim survive if x doubled?”)  
- operationalize (turn evidence gaps into measurable queries)  
- integrate (combine evidence for synthesis)  
- simulate (apply evidence-informed update rules to dynamics)

-----

## examples (small)

### example 1: “remote work reduces productivity”
- support: some managerial surveys; coordination-heavy roles suffer  
- disconfirm: multi-firm panel studies show no aggregate drop  
- mechanism check: deep-work roles should benefit  
- base rate: heterogeneous effects dominate means  
- crux: role-type distribution > ideology

---

### example 2: “alpha school is a grift”
- support: heavy marketing, thin historical data  
- disconfirm: student outcome claims, parent testimonials, emerging comp data  
- mechanism: incentives should produce measurable gains *if real*  
- reference class: new charter/private models often have shaky early years  
- missing evidence: longitudinal alumni performance, teacher turnover

---

### example 3: “migraine frequency tied to slight deviations”
- support: trigeminal sensitization literature; sleep/hydration triggers  
- disconfirm: some migraines do not correlate with deviations  
- mechanism: threshold-lowering under chronic stress  
- crux: buffer capacity > specific interventions

-----

## meta-note

evidence is the **empirical operator**.  
where argue shifts stance, evidence shifts *credence*.

it’s the bridge from thought-space to world-space.  
and because we can pull from the web, it’s the first FT op with an explicit **external reality tether**.