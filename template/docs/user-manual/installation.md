# Install {{project_name}}

This page installs {{project_name}} {{version}} and checks that it works. It takes about
{{minutes}} minutes.

## Requirements

| Requirement | Version | Check with |
| ----------- | ------- | ---------- |
| {{os_list}} | | |
| {{runtime}} | {{runtime_version}} or later | `{{runtime_version_command}}` |
| {{system_dependency}} | {{dependency_version}} | `{{dependency_version_command}}` |

<!-- TIP: List only what the reader must install themselves. Delete rows you don't need. -->

## Install

<!-- TIP: Give one recommended method first. Put alternatives under their own heading.
Delete the methods your project does not offer. -->

1. Install the package:

   ```sh
   {{install_command}}
   ```

2. Check the version:

   ```sh
   {{cli_name}} --version
   ```

   You should see:

   ```text
   {{cli_name}} {{version}}
   ```

### Install from source

```sh
git clone https://github.com/{{github_username}}/{{repo_name}}.git
cd {{repo_name}}
{{install_from_source_command}}
```

## Upgrade

```sh
{{upgrade_command}}
```

{{breaking_change_note_or_delete_this_line}}

## Uninstall

```sh
{{uninstall_command}}
```

{{files_left_behind_or_delete_this_line}}

## Next steps

- [Quickstart](quickstart.md): your first result in five minutes.
- Installation errors: see [Troubleshooting](troubleshooting.md).
