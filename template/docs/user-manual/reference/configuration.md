# Configuration reference

Applies to {{project_name}} {{version}}.

## Where settings come from

{{project_name}} reads settings in this order. A later source overrides an earlier one.

1. Built-in defaults
2. The config file
3. Environment variables
4. Command line options

<!-- TIP: Delete the sources your project does not have. -->

## Config file

Location: `{{config_path}}`. Create it with:

```sh
{{create_config_command}}
```

Example:

```toml
{{example_config}}
```

| Key | Type | Default | Description |
| --- | ---- | ------- | ----------- |
| `{{key}}` | {{type}} | `{{default}}` | {{description}} |

## Environment variables

| Variable | Default | Description |
| -------- | ------- | ----------- |
| `{{ENV_VAR}}` | `{{default}}` | {{description}} |

<!-- TIP: Never put a real key, token or password in an example. Use a value that is
obviously fake, such as `your-api-key`. -->
