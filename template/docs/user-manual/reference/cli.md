# Command line reference

<!-- TIP: Copy names, options and defaults from `{{cli_name}} --help` and
`{{cli_name}} <command> --help` of the version you document. Never type them from memory.
Keep one section per command, in the order --help lists them. -->

Applies to {{project_name}} {{version}}.

```text
{{cli_name}} [GLOBAL OPTIONS] COMMAND [ARGS]
```

## Global options

| Option | Default | Description |
| ------ | ------- | ----------- |
| `--help` | | Show help and exit. |
| `--version` | | Print the version and exit. |
| `{{option}}` | `{{default}}` | {{description}} |

## `{{cli_name}} {{command}}`

{{what_the_command_does_in_one_sentence}}

```text
{{cli_name}} {{command}} [OPTIONS] {{ARGUMENT}}
```

| Argument or option | Required | Default | Description |
| ------------------ | -------- | ------- | ----------- |
| `{{ARGUMENT}}` | Yes | | {{description}} |
| `{{option}}` | No | `{{default}}` | {{description}} |

Example:

```sh
{{example_command}}
```

## Exit codes

| Code | Meaning |
| ---- | ------- |
| `0` | Success |
| `1` | {{meaning}} |
| `2` | Invalid arguments or options |

## Environment variables

See [Configuration](configuration.md#environment-variables).
