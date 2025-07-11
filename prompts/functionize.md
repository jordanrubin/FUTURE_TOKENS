tl;dr
functionalization (aka “functionation”) is the craft of turning a business into explicit functions—making the causal graph visible. do it well and you surface the highest-leverage knobs, expose hidden uncertainty, and hand an llm a clean control panel instead of a vibe cloud. [[remember: functionalization = explicit mapping of inputs → intermediate drivers → outputs]]

–––

why functionalization matters
• leverage audit big deltas hide where ∂output / ∂driver spikes
• scope clarity the map draws a bright line around what is the org vs the ambient world
• change forecasting tweak a node, follow ripples—cheap strategy previews
• prompt hygiene llms love structure; give them f(x) and they quit hallucinating

[[remember: use driver tree to focus attention]]

–––

anatomy of a good function map
	1.	objective node – the single scalar you are trying to bend (profit, nps, auc, etc.)
	2.	driver lattice – the minimal set of mutually independent sub-functions that multiply or sum to the objective
	3.	control flags – which drivers are in-scope levers vs exogenous noise
	4.	metric tape – canonical units + refresh cadence for every driver
	5.	validation hooks – backtest or sim harness to keep guesses honest

–––

worked example: lending biz (short-term consumer loans)

$$
\text{profit} = \sum_i \left(\text{APR}_i \times \text{principal}_i \times \text{duration}_i\right)
- \sum_i \left(\text{PD}_i \times \text{LGD}_i \times \text{principal}_i\right)
- \text{opex}
$$

driver lattice (nested bullets = deeper layer)
	•	d0 net profit – objective
	•	d1
	•	revenue – APR, principal, duration [[lever]]
	•	credit loss – default_prob, LGD, principal default_prob partly exogenous
	•	opex – fixed, variable
	•	d2
	•	default_prob – model_score [[lever]]; macro_state [[exogenous]]
	•	LGD – collateral_policy [[lever]]

take-away → APR elasticity to default_prob is high, so underwriting quality matters more than price-tweaking. [[remember: lending example shows partial-derivative thinking]]

–––

worked example: forecasting startup (selling event-prob updates)

$$
\text{client\_value} = \sum_{\text{events}} \left(P_{\text{improve}} \times \text{impact}_{\text{event}} \times \text{adoption\_rate}\right)
$$

$$
\text{revenue} = \text{client\_value} \times \text{rev\_share} - \text{COGS} - \text{opex}
$$

driver lattice
	•	d0 net revenue – objective
	•	d1
	•	client_value – depends on client economics, partly exogenous
	•	COGS – compute + analyst headcount [[lever]]
	•	opex – SG&A [[lever]]
	•	d2
	•	P_improve – model quality [[lever]]
	•	impact_event – client economics [[exogenous]]
	•	adoption_rate – CX success & UX friction partly controllable

take-away → invest in R&D until adoption_rate < 10%; below that, onboarding fixes dominate.

–––

building the map (process blueprint)
	1.	draft naive tree – start with something like $\text{revenue} = \text{price} \times \text{volume}$
	2.	iterative slicing – recurse until added complexity < info gain
	3.	control tagging – mark each driver [[lever]] or [[exogenous]]
	4.	data wiring – bind each leaf to a metric source (db, api, csv)
	5.	sensitivity scan – run $\pm\Delta$ on each leaf; rank by impact
	6.	compression pass – merge low-impact or highly covariant leaves [[do: run_sensitivity_scan]]

–––

best practices for llm prompting
• explicit math – formulas inline so the model parses structure
• double-bracket tags
– [[remember: …]] → stash in working memory
– [[lever]] / [[exogenous]] → fast controllability flag
– [[do: …]] → action request (calc, sim, critique)
• one node per line – easier token parsing
• units everywhere – stop “divide apples by minutes” errors
• close the loop – ask the llm to suggest missing drivers; they are good at ontology hole-filling

–––

prompt suffix template (copy-paste-ready)

below is a functionalization map. follow these rules:
	1.	store any line with [[remember: …]] to working memory.
	2.	focus analysis on nodes tagged [[lever]].
	3.	when you see [[do: ACTION]], execute the described action and return the result inline.
	4.	if a node lacks units, flag it.
	5.	suggest one additional independent driver i missed.
	6.	output results as markdown with h3 headings and bullet lists—no prose padding.

[[remember: prompt suffix ready to append]]