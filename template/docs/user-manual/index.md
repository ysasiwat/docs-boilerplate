<!-- user-manual-boilerplate v1.0.0 -->
<!--
*** Blank user manual. Replace every {{token}}, then delete the comment blocks.
*** `grep -rn '{{' docs/user-manual` lists any you missed.
*** Keep the first line: it tells the user-manual skill which template version this is.
*** WRITING_GUIDE.md in ysasiwat/user-manual-boilerplate explains each page.
-->

# {{project_name}} user manual

{{project_name}} {{one_sentence_what_it_does_for_the_reader}}.

<!-- TIP: Inverted pyramid. The first two sentences tell readers whether this tool solves their
problem. Write the outcome, not the technology: "turns X into Y so you can Z". -->

This manual covers {{project_name}} {{version}}. It is for {{audience}}, for example
{{audience_example}}. You need {{assumed_knowledge}}.

## Start here

| If you want to | Read |
| -------------- | ---- |
| Install {{project_name}} | [Installation](installation.md) |
| See a first result in five minutes | [Quickstart](quickstart.md) |
| Follow a real job from input to output | [Examples](examples/01-workflow.md) |
| Do one specific task | [How-to guides](#how-to-guides) |
| Understand how it works | [Concepts](#concepts) |
| Look up a command, function or setting | [Reference](#reference) |
| Fix an error | [Troubleshooting](troubleshooting.md) |

## Examples

End-to-end walkthroughs with sample data and the exact output you should see.

- [{{workflow_title}}](examples/01-workflow.md)

## How-to guides

One task per page, in numbered steps.

- [{{task_title}}](how-to/task.md)

## Concepts

Background and explanation. No steps.

- [{{topic_title}}](concepts/topic.md)

## Reference

- [Command line](reference/cli.md)
- [Python API](reference/api.md)
- [Configuration](reference/configuration.md)

## Help

- [Troubleshooting](troubleshooting.md)
- [FAQ](faq.md)
- [Glossary](glossary.md)
- Report a problem: <https://github.com/{{github_username}}/{{repo_name}}/issues>
