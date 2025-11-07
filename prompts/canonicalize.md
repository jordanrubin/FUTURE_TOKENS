---
title: canonicalize
aka: normalize move spec, c14n
tier: 2
substrate: symbolic (verbal-optional)
genre: spec-compilation / auditing
spec_version: canonicalize@v2.0
---

## what it is

**canonicalize** takes a **freeform move doc** (or messy notes) and emits a **runnable move spec** that *any* llm can execute **using that doc alone**. the output is a markdown file with fixed sections, a machine-readable **run** block (inputs for the move), a required **output** schema (what the executor must emit), **error codes**, and a tiny **json schema** so the executor can self-check. this op is **idempotent** and **fail-closed**.

---

## when to use

- you want different llms/people to **run the same mental move** consistently  
- you have a draft move (e.g., match-filter, judgmentize) that needs to ship as a **single-file contract**  

---

## run (inputs contract; llm MUST parse this first)

```yaml
run:
  op: canonicalize                      # MUST equal 'canonicalize'
  mode: emit | check                    # 'emit' = output canonical move spec; 'check' = report diffs only
  x: "<source move text (md/txt)>"      # required; can be messy notes
  move_id: "<short op name>"            # optional; else inferred (e.g., 'match-filter')
  S:                                     # required, the canonical move layout (versioned)
    name: "move-spec"
    version: "2.0.0"
    required_sections:                   # exact order for emitted move spec
      - frontmatter
      - what it is
      - when to use
      - inputs
      - outputs
      - parameters (knobs)
      - invariants
      - how it runs
      - determinism rules
      - resource caps
      - errors (fail-closed)
      - minimal signature
      - run (executor contract for the move)
      - output (executor required shape for the move)
      - json schema (executor SHOULD self-check)
      - prompts (llm interface for the move)
      - examples (1 small worked run)
      - dimensionalization
      - done when
      - notes / pitfalls
      - see also
    normative_fields:                    # define equivalence for move specs
      - op
      - inputs.names
      - outputs.names
      - parameters.names
      - invariants.names
      - error_codes
    token_rules: { unicode: nfkc, casefold: false, whitespace: collapse, punctuation_policy: standardize }
    structure_rules: { key_order: explicit, list_policy: sort, elide_defaults: false }
  knobs:
    tau_fidelity: standard               # strict|standard|lax dropping of non-normative prose
    lambda_list: sort
  resource_caps:
    max_tokens: 12000