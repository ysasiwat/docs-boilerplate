# Configuration reference

Applies to tilecut 1.4.0.

## Where settings come from

tilecut reads settings in this order. A later source overrides an earlier one.

1. Built-in defaults
2. The config file
3. Environment variables
4. Command line options

## Config file

Location: `~/.config/tilecut/config.toml`. Create it with:

```sh
mkdir -p ~/.config/tilecut && touch ~/.config/tilecut/config.toml
```

Example:

```toml
format = "webp"
workers = 8
```

| Key | Type | Default | Description |
| --- | ---- | ------- | ----------- |
| `format` | string | `"png"` | Default tile format: `png` or `webp`. |
| `workers` | integer | number of CPU cores | Tiles cut in parallel. |

## Environment variables

| Variable | Default | Description |
| -------- | ------- | ----------- |
| `TILECUT_WORKERS` | number of CPU cores | Same as `workers`. |
| `TILECUT_CACHE_DIR` | `~/.cache/tilecut` | Where reprojected rasters are cached. |
