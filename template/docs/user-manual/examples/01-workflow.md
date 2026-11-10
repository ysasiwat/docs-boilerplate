# {{workflow_title}}

<!-- TIP: An end-to-end example follows one real job from raw input to final output, the way
a user would do it at work. Rename this file after the workflow, for example
01-tile-a-satellite-scene.md, and add one file per workflow: 02-..., 03-...
Every command must run as written on the sample data, and every output block must be what
the tool prints today. Run the whole page again before each release. -->

In this example you {{goal_in_one_sentence}}. You start with {{input_description}} and end
with {{output_description}}.

Tested with {{project_name}} {{version}} on {{os}}, {{date_tested}}.

## What you need

- {{project_name}} installed; see [Installation](../installation.md).
- The sample data in [`{{sample_data_path}}`](https://github.com/{{github_username}}/{{repo_name}}/tree/main/{{sample_data_path}}).
- {{other_prerequisite_or_delete}}

## The workflow at a glance

```mermaid
flowchart LR
  A[{{input}}] --> B[{{step_1}}] --> C[{{step_2}}] --> D[{{output}}]
```

## 1. {{step_1_title}}

{{why_this_step_in_one_sentence}}

```sh
{{command_1}}
```

```text
{{output_1}}
```

## 2. {{step_2_title}}

{{why_this_step_in_one_sentence}}

```sh
{{command_2}}
```

```text
{{output_2}}
```

<!-- TIP: To show the same step from Python, add a second block under it. Keep the CLI
block first. -->

```python
{{python_equivalent}}
```

## 3. Check the result

```sh
{{check_command}}
```

```text
{{check_output}}
```

If the output differs, see [Troubleshooting](../troubleshooting.md).

## 4. Clean up

```sh
{{cleanup_command}}
```

## What you did

- {{outcome_1}}
- {{outcome_2}}

## Next steps

- [{{related_how_to}}](../how-to/task.md)
- [{{related_concept}}](../concepts/topic.md)
