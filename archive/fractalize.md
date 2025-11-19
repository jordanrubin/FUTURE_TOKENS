### tl;dr  
**fractalize** recursively expands a seed idea so that each level re-states its parent before introducing its own details, yielding a perfectly nested outline.  
[[remember: fractalize = recursive, self-similar expansion with parent repetition]]

### why fractalize  
- multi-resolution docs – exec summary → section → sub-section, all generated in one pass and always in sync  
- narrative mirroring – chapters, scenes, and paragraphs share identical backbone  
- code scaffolding – project dir → module → function stubs, each tier following one spec  
- pedagogy – concept explained to toddler, teen, and PhD without drifting

### anatomy  
| field           | purpose                        | default      |
|-----------------|--------------------------------|--------------|
| `depth`         | recursion layers               | `3`          |
| `unit`          | sentence · paragraph · section · file | `sentence` |
| `self_similarity` | 0 (loose riff) → 1 (near copy) | `0.8`        |
| `detail_gain`   | token multiplier per level     | `1.4`        |
| `symmetry_bias` | fixed child count per parent   | `false`      |
| `repeat_parent` | echo parent line before children| `true` (locked) |
| `prefix_parent`  | prepend each child with its facet label   | `facet` |

### rune recipe (human-readable)
id: fractalize  
version: 0.1.0  
operator: generate  
axes: entropy = babble, legibility = human, scale = macro  
ports: inputs = seed_text, outputs = nested_markdown  
default_opts:  
- depth: 3  
- unit: sentence  
- self_similarity: 0.8  
- detail_gain: 1.4  
- symmetry_bias: false  
- repeat_parent: true

### quick-cast syntax
[[fractalize]]
[[depth: 3]]
[[unit: sentence]]
[[self_similarity: 0.9]]
[[detail_gain: 1.2]]
[[symmetry_bias: true]]

### worked example (depth = 3)

seed:  
fractalization recursively expands an idea so every level mirrors and elaborates the one above.

cast:  
[[fractalize]]
[[depth: 3]]
[[unit: sentence]]

output:

lvl-0  
fractalization recursively expands an idea so every level mirrors and elaborates the one above.

lvl-1  
fractalization recursively expands an idea so every level mirrors and elaborates the one above.  
self-similarity: ensures patterns repeat at every scale, linking macro structure to micro details.  
zoom-control: allows readers to enter at any depth and still receive a coherent slice of the whole.

lvl-2  
self-similarity: ensures patterns repeat at every scale, linking macro structure to micro details.  
self-similarity — motif-echo: recurring language and structure give instant recognition cues across levels.  
self-similarity — cohesion-lock: the echo prevents conceptual drift and keeps updates synchronized top-to-bottom.

zoom-control: allows readers to enter at any depth and still receive a coherent slice of the whole.  
zoom-control — cognitive-throttle: depth choice matches the audience’s bandwidth, avoiding overload or starvation.  
zoom-control — selective-focus: subject-matter experts can drill directly to the granularity that matters for their role.

lvl-3  
motif-echo: recurring language and structure give instant recognition cues across levels.  
motif-echo — token-savings: repeated motifs compress well, reducing context-window cost.  
motif-echo — recall-boost: familiar echoes improve memory and retrieval accuracy.

cohesion-lock: the echo prevents conceptual drift and keeps updates synchronized top-to-bottom.  
cohesion-lock — drift-barrier: any off-topic branch is obvious because it breaks the pattern.  
cohesion-lock — update-sync: revising the master line automatically cascades clarified language downward.

cognitive-throttle: depth choice matches the audience’s bandwidth, avoiding overload or starvation.  
cognitive-throttle — bandwidth-match: executives skim lvl-1, analysts live at lvl-3.  
cognitive-throttle — fatigue-cut: imposing depth caps stops readers from wading through unnecessary detail.

selective-focus: subject-matter experts can drill directly to the granularity that matters for their role.  
selective-focus — role-target: engineering dives into implementation facets without re-reading strategy prose.  
selective-focus — drill-path: the prefixed labels act as breadcrumb tags, guiding readers down the exact branch they need.

### best practices  
- keep depth × detail_gain within context window to avoid blow-ups  
- raise self_similarity for textbook consistency; lower for creative riffing  
- enable symmetry_bias when you need perfectly even outlines  
- chain after dimensionalize to get zoomable explanations of chosen axes

### known limits  
- very deep recursion may exceed token limit — compress with an abridge rune afterward  
- self_similarity < 0.6 risks topic drift