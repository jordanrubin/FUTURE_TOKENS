title: canonicalize
aka: normalize move spec, c14n
tier: 2
substrate: symbolic (verbal-optional)
genre: spec-compilation / auditing
spec_version: canonicalize@v2.1

what it is

canonicalize turns a freeform move doc (notes, prose, partial spec) into a single, runnable move spec that any llm can execute using that doc alone. it standardizes sections, enforces a fixed run contract for the move, a required output shape, finite error codes, and a tiny json schema so executors can self-check. single-op, idempotent, fail-closed.

⸻

when to use
•you want different llms/humans to run the same mental move consistently.
•you need a move (e.g., match-filter, judgmentize) packaged as a one-file contract.

⸻

inputs
•x: source move text (markdown/txt) to canonicalize.
•move_id (optional): short op name (e.g., match-filter). infer if absent.
•layout_spec (S@v): required section order for emitted move specs (exactly the headers used below).
•knobs (optional): fidelity (strict/standard/lax), list policy (sort/preserve).
•resource_caps (optional): max tokens for synthesis.

⸻

outputs
•move_spec.md: canonical, runnable spec for the move (single document with sections below, in order).
•diff: rule-tagged edits from x → move_spec.md.
•audit: layout version, knobs, warnings, timestamp, idempotence check.

⸻

parameters (knobs)
•fidelity: how aggressively to drop non-normative prose (default: standard).
•list_policy: sort (deterministic) | preserve (if semantic order matters).
•caps: token/time soft limits; on breach, emit warning + minimal viable spec.

⸻

invariants
•single document with the exact section headers and order below.
•idempotent: re-running on move_spec.md yields no diffs.
•fail-closed: if a required field cannot be inferred, emit an error block in the move's output shape (needs_inputs, etc.) rather than guessing.
•deterministic names: inputs/outputs/parameters/invariants listed as names (ascii-sorted if list_policy=sort).

⸻

how it runs
1.parse & extract: op name, intended inputs/outputs, parameters, invariants, procedure.
2.synthesize missing executor contracts: run, output, json schema, errors, prompts, example; if any required part is unknowable → stop and include a needs_inputs example in the move's output section.
3.order sections exactly as below; normalize headings/whitespace; apply list policy.
4.emit move_spec.md; write diff + audit; re-run to confirm idempotence.

⸻

determinism rules
•headings must match exactly; lists of names use ascii sort if list_policy=sort.
•timestamps appear only in audit (not in the move body).
•no extra sections, no duplicates.

⸻

resource caps
•on cap breach, minimize prose and keep normative parts (frontmatter, run, output, errors, prompts) intact; add a warning in audit.

⸻

errors (fail-closed)

for canonicalize itself:
•if inputs insufficient to produce a runnable spec, include in audit: error: empty_corpus | over_budget, and ensure the examples section shows the move's executor emitting a needs:-style output.

⸻

minimal signature

canonicalize(x, move_id?, S@v, knobs?) → move_spec.md + diff + audit

⸻

run (executor contract for the move)

this is the mandatory block that canonicalize must embed in the emitted move spec. it tells any llm exactly what inputs to accept to run the move itself (not this compiler).

run:
  op: "<move id>"                 # exact operation name the executor must implement
  modes: ["<mode1>", "<mode2>"]   # if the move has modes; else []
  required:
    - { name: "<input_name>", type: "<string|integer|number|object|array|bool>" }
    - { name: "<input_name>", type: "<type>" }
  optional:
    - { name: "<input_name>", type: "<type>", default: <value> }
  constraints:
    - "<predicate e.g., k >= 1>"
  fail_closed: true               # executor must emit 'needs' or 'error' in OUTPUT on invalid/missing

⸻

output (executor required shape for the move)

this block is also embedded in the emitted move spec. executors must emit exactly one fenced yaml block matching this shape when running the move.

output:
  payload:                         # move-specific primary data contract
    <move_specific_keys_and_arrays_here>
  audit:
    inputs_echo: { ... }           # echo of normalized inputs
    warnings: ["<string>", ...]
    timestamp: "<iso8601>"

note: if inputs are missing/invalid, executors must emit one of:

needs: ["<missing_input_1>", "<missing_input_2>"]

error:
  code: "<error_code_from_errors_section>"
  msg: "<short reason>"

⸻

json schema (executor SHOULD self-check)

embed a minimal json schema for the output block above so executors can validate before emitting. use draft 2020-12; keep to required fields the move truly needs.

{
  "$schema":"https://json-schema.org/draft/2020-12/schema",
  "title":"<move>.output",
  "type":"object",
  "required":["output"],
  "properties":{
    "output":{
      "type":"object",
      "required":["payload","audit"],
      "properties":{
        "payload":{"type":"object"},
        "audit":{
          "type":"object",
          "required":["inputs_echo","timestamp"],
          "properties":{
            "inputs_echo":{"type":"object"},
            "warnings":{"type":"array","items":{"type":"string"}},
            "timestamp":{"type":"string"}
          }
        }
      }
    }
  }
}

⸻

prompts (llm interface for the move)
•run (emit payload):
"using the run contract above, validate inputs; if any are missing, emit a single needs: block and stop. otherwise, compute the payload exactly as specified, then emit a single output yaml block matching the required shape. no extra prose."
•check (validate only):
"validate the provided inputs against the run contract; if valid, return output.audit.inputs_echo and an empty payload object; else emit needs:."

canonicalize must fill these with move-specific instructions.

⸻

examples (1 small worked run)

include one tiny, domain-agnostic example using toy values that produces a fully-formed output block. keep it ≤20 lines. this is for executors to pattern-match formatting.

⸻

dimensionalization
•executor sufficiency: an llm can run the move using only run, output, json schema, prompts (manual/golden).
•idempotence: re-running canonicalize on move_spec.md yields no diffs.
•section completeness: proportion of required sections present (want 1.0).
•ambiguity count: unresolved types/defaults (want 0).
•error coverage: finite, named codes present.

⸻

done when
•a single move_spec.md is emitted with sections in this exact order, including run, output, json schema, prompts, and one example; audit shows idempotence pass.

⸻

notes / pitfalls
•don't overfit prose; executors key off contracts, not narration.
•if a required input cannot be made precise, leave the contract strict and show the executor's needs: path in examples rather than guessing.

⸻

see also

match-filter (evidence compression), judgmentize (adjudication), frame-test (navigate frames), frame-route (prior-driven frame selection).
