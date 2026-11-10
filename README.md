<a id="readme-top"></a>



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">user-manual-boilerplate</h3>

<!-- PROJECT SHIELDS — keep the blank lines around this block and no indent -->
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![License][license-shield]][license-url]

  <p align="center">
    A user manual template for CLI tools and libraries, from install to end-to-end examples.
    <br />
    <a href="template/docs/user-manual/index.md"><strong>Open the blank manual »</strong></a>
    <br />
    <br />
    <a href="example/docs/user-manual/index.md">View Example</a>
    &middot;
    <a href="WRITING_GUIDE.md">Writing Guide</a>
    &middot;
    <a href="https://github.com/ysasiwat/user-manual-boilerplate/issues">Report Bug</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#quick-start">Quick Start</a></li>
    <li><a href="#the-pages">The pages</a></li>
    <li><a href="#configuration">Configuration</a></li>
    <li><a href="#publish-as-a-website">Publish as a website</a></li>
    <li><a href="#versions">Versions</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

`user-manual-boilerplate` is the end-user half of a project's documentation. It is a
`docs/user-manual/` folder you copy into a CLI or library repository and fill in: install,
quickstart, end-to-end examples, how-to guides, concepts, reference, troubleshooting, FAQ and
glossary.

It is the companion to [readme-boilerplate][readme-boilerplate-url]: the README says what the
project is and links to this manual for how to use it.

What it is not: developer documentation. Architecture, design docs and ADRs live elsewhere,
for example `docs/adr/`. That is why the manual sits in its own `docs/user-manual/` folder.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- QUICK START -->
## Quick Start

From the root of your project:

```sh
git clone --depth 1 https://github.com/ysasiwat/user-manual-boilerplate.git /tmp/umb
cp -rn /tmp/umb/template/. .
grep -rn '{{' docs/user-manual mkdocs.yml
```

`cp -n` never overwrites a file you already have. If you already have a
`.github/PULL_REQUEST_TEMPLATE.md`, copy its **User manual** section in by hand. The last
command lists the tokens left to replace. Then link the manual from your README:

```markdown
See the [user manual](docs/user-manual/index.md).
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- THE PAGES -->
## The pages

Each page is one kind of documentation. [WRITING_GUIDE.md](WRITING_GUIDE.md) explains why
and how to write each one.

| Page | Kind | Purpose |
| ---- | ---- | ------- |
| `index.md` | Entry | What the tool does, who it is for, where to start |
| `installation.md` | Task | Install, check, upgrade, uninstall |
| `quickstart.md` | Learning | First result in five commands or fewer |
| `examples/01-*.md` | Learning | One real job from input data to final output, with exact output |
| `how-to/*.md` | Task | One goal per page, numbered steps |
| `concepts/*.md` | Concept | How and why it works; no steps |
| `reference/cli.md` | Reference | Commands, options, exit codes, from `--help` |
| `reference/api.md` | Reference | Main library entry points; links to generated API docs |
| `reference/configuration.md` | Reference | Config file and environment variables |
| `troubleshooting.md` | Reference | Error message → cause → fix |
| `faq.md` | Reference | Questions users actually asked |
| `glossary.md` | Reference | Project terms |

The kit also copies `mkdocs.yml`, a pull request template with a docs checklist, and a
GitHub Actions link check.

| Blank | Filled in |
| ----- | --------- |
| [template/docs/user-manual/](template/docs/user-manual/index.md) | [example/docs/user-manual/](example/docs/user-manual/index.md), for a fictional CLI called `tilecut` |

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONFIGURATION -->
## Configuration

Tokens are written in double braces. These appear on many pages; replace them everywhere
first. Every other `{{token}}` describes what to write in its place.

| Token | Replace with | Example |
| ----- | ------------ | ------- |
| `{{project_name}}` | Display name | `tilecut` |
| `{{cli_name}}` | The command users type | `tilecut` |
| `{{package_name}}` | Import or install name | `tilecut` |
| `{{version}}` | Version the manual describes | `1.4.0` |
| `{{github_username}}` | GitHub user or org | `example-org` |
| `{{repo_name}}` | Repository name | `tilecut` |
| `{{api_docs_url}}` | Generated API reference | `https://example-org.github.io/tilecut/api/` |

Rename `examples/01-workflow.md`, `how-to/task.md` and `concepts/topic.md` after what they
describe, and update the links in `index.md`. Delete pages your project does not need, such
as `reference/api.md` for a CLI-only tool.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- PUBLISH -->
## Publish as a website

The pages render on GitHub as they are. To build a site with MkDocs Material:

```sh
pip install mkdocs-material
mkdocs serve
```

`mkdocs.yml` sets `docs_dir: docs/user-manual`, so other folders under `docs/`, such as
`docs/adr/` or `docs/agents/`, are not published.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- VERSIONS -->
## Versions

The first line of every manual's `index.md` records the template version it came from:

```html
<!-- user-manual-boilerplate v1.0.0 -->
```

Keep it. To bring a manual up to a newer template, read [CHANGELOG.md](CHANGELOG.md) from that
version on.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT No Attribution License. See [`LICENSE`](LICENSE). Copy the
template into your project without crediting anyone.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [The Good Docs Project][tgdp-url], whose templates (v1.6.0, MIT-0) this kit condenses
* [Diátaxis](https://diataxis.fr/), for the four kinds of documentation
* [Write the Docs](https://www.writethedocs.org/guide/), for docs as code

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
[stars-shield]: https://img.shields.io/github/stars/ysasiwat/user-manual-boilerplate.svg?style=for-the-badge
[stars-url]: https://github.com/ysasiwat/user-manual-boilerplate/stargazers
[issues-shield]: https://img.shields.io/github/issues/ysasiwat/user-manual-boilerplate.svg?style=for-the-badge
[issues-url]: https://github.com/ysasiwat/user-manual-boilerplate/issues
[license-shield]: https://img.shields.io/github/license/ysasiwat/user-manual-boilerplate.svg?style=for-the-badge
[license-url]: https://github.com/ysasiwat/user-manual-boilerplate/blob/main/LICENSE
[readme-boilerplate-url]: https://github.com/ysasiwat/readme-boilerplate
[tgdp-url]: https://gitlab.com/tgdp/templates
