# Install tilecut

This page installs tilecut 1.4.0 and checks that it works. It takes about five minutes.

## Requirements

| Requirement | Version | Check with |
| ----------- | ------- | ---------- |
| Linux, macOS or Windows 10+ | | |
| Python | 3.10 or later | `python --version` |
| GDAL | 3.6 or later | `gdalinfo --version` |

## Install

1. Install the package:

   ```sh
   pip install tilecut
   ```

2. Check the version:

   ```sh
   tilecut --version
   ```

   You should see:

   ```text
   tilecut 1.4.0
   ```

### Install from source

```sh
git clone https://github.com/example-org/tilecut.git
cd tilecut
pip install -e .
```

## Upgrade

```sh
pip install --upgrade tilecut
```

tilecut 1.4 renamed `--fmt` to `--format`. Update your scripts when you upgrade from 1.3.

## Uninstall

```sh
pip uninstall tilecut
```

The cache in `~/.cache/tilecut/` stays. Delete it by hand if you no longer need it.

## Next steps

- [Quickstart](quickstart.md): your first result in five minutes.
- Installation errors: see [Troubleshooting](troubleshooting.md).
