# Runeforge

Runeforge collects small, composable prompts that the FUTURE TOKENS project can reuse as building blocks. Each file aims to capture a single reasoning move or pattern in plain language.

See the [FUTURE TOKENS Substack](https://jordanmrubin.substack.com/p/future-tokens) for the broader mission and philosophy behind these tokens.

## Repository layout

- `prompts/` – source markdown for new prompt patterns. These are the drafts and experiments.
- `public/` – prompts promoted for publication. A GitHub workflow exports this subtree to the [FUTURE_TOKENS](https://github.com/jordanrubin/FUTURE_TOKENS) repo.
- `.github/workflows/publish.yaml` – automation that pushes `public/` to the public mirror.

Additional prompts or writing tools should start life in `prompts/` and graduate to `public/` when ready to share.

