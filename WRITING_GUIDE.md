# Writing guide

The rules behind every page in `template/docs/user-manual/`. Read this once before you fill in
a manual, and come back when a page feels wrong.

## Who you write for

The reader uses your CLI or library to get a job done. They are technical, but they did not
build the tool and do not want to learn its internals. Write for the person who runs
`--help` and then looks for an example.

Developer docs (architecture, design decisions, ADRs, contributing) do not belong here. Keep
them elsewhere, for example `docs/adr/` or `CONTRIBUTING.md`.

## Four kinds of page

Every page is exactly one kind. Mixing kinds is the most common reason a manual is hard to use.

| Kind | Answers | Pages | Contains |
| ---- | ------- | ----- | -------- |
| Learning | "Show me it working" | `quickstart.md`, `examples/` | A guided path with sample data and exact output |
| Task | "How do I do X?" | `how-to/` | Numbered steps for one goal |
| Concept | "What is it, and why?" | `concepts/` | Explanation, no steps |
| Reference | "What exactly does this option do?" | `reference/`, `glossary.md` | Complete, dry, tables |

`troubleshooting.md` and `faq.md` are reference pages indexed by the reader's problem.

Separate concepts from tasks: when a how-to needs background, write it in a concept page and
link to it. When a concept page grows steps, move them to a how-to.

## Page structure

- **Inverted pyramid.** The first sentence says what the page gives the reader. The first
  paragraph says whether this page is the right one.
- **Skimmable.** Descriptive headings, short paragraphs, lists and tables. Readers scan.
- **Bold less than 10% of the text**, so the bold that remains stands out. Headings, not bold
  labels, carry structure.
- **One H1 per page**, matching the file name: "Resume an interrupted run" →
  `resume-an-interrupted-run.md`.
- **Next steps / See also** at the end, not links scattered through the steps.

## Writing steps

- Start each step with a verb: "Run", "Open", "Set".
- One action per step. Five to nine steps per task; split a longer task.
- Show the command, then the output the reader should see. A reader who sees the same output
  knows the step worked.
- Mark optional steps `Optional:` and conditional steps `If <condition>, ...`.

## Examples (end-to-end)

Each file in `examples/` follows one real job from raw input to final output.

- Use sample data that lives in the project repository, for example `examples/data/`.
- Every command runs exactly as written on that data.
- Every output block is copied from a real run, not written by hand. Shorten long output with
  `...` but never change a line you keep.
- State the version and the date you ran it: `Tested with tilecut 1.4.0 on Ubuntu 24.04, 2026-11-10.`
- Run every example again before each release. A stale example is worse than none.

## Reference pages

- Copy option names, defaults and signatures from `--help` and the code. Never from memory.
- For a library, document only the main entry points by hand and link to the reference
  generated from docstrings (pdoc, Sphinx, mkdocstrings, typedoc). Generated docs do not drift.
- One table format per page, used everywhere on that page.

## Images and diagrams

- No screenshots of terminals. Put the output in a `text` code block: it is searchable,
  copyable and easy to update.
- Use Mermaid for diagrams. GitHub and MkDocs render it, and it is diffable text.
- Never put an image where the reader needs to copy something.

## Language

- Plain English. Short sentences. Active voice: "tilecut writes the tiles", not "the tiles are
  written".
- Spell out an abbreviation the first time a page uses it, and add it to `glossary.md`.
- Call one thing by one name on every page.
- Never put a real key, token, password, internal hostname or customer data in an example.

## Docs as code

- The manual lives in the same repository as the code, under `docs/user-manual/`.
- A pull request that changes behaviour updates the manual in the same pull request. The PR
  template asks.
- The link check runs on every pull request.

## Sources

This guide condenses [The Good Docs Project templates](https://gitlab.com/tgdp/templates)
(v1.6.0) and [Diátaxis](https://diataxis.fr/), plus the guidance in
[Write the Docs](https://www.writethedocs.org/guide/) and
[GitHub's documentation guide](https://github.blog/developer-skills/documentation-done-right-a-developers-guide/).
