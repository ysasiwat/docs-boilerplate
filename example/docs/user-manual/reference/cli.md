# Command line reference

Applies to tilecut 1.4.0.

```text
tilecut [GLOBAL OPTIONS] COMMAND [ARGS]
```

## Global options

| Option | Default | Description |
| ------ | ------- | ----------- |
| `--help` | | Show help and exit. |
| `--version` | | Print the version and exit. |
| `--quiet` | off | Print errors only. |

## `tilecut info`

Print a raster's size, projection, resolution and suggested zoom range.

```text
tilecut info [OPTIONS] SOURCE
```

| Argument or option | Required | Default | Description |
| ------------------ | -------- | ------- | ----------- |
| `SOURCE` | Yes | | Path to a GeoTIFF. |
| `--json` | No | off | Print the result as JSON. |

## `tilecut cut`

Cut a raster into `z/x/y` map tiles.

```text
tilecut cut [OPTIONS] SOURCE
```

| Argument or option | Required | Default | Description |
| ------------------ | -------- | ------- | ----------- |
| `SOURCE` | Yes | | Path to a GeoTIFF. |
| `--zoom MIN-MAX` | No | suggested range | Zoom levels to cut, for example `10-14`. |
| `--format png\|webp` | No | `png` | Tile image format. |
| `--out DIR` | No | `tiles` | Output folder. |
| `--resume` | No | off | Skip tiles that an earlier run already wrote. |

Example:

```sh
tilecut cut scene.tif --zoom 10-14 --format webp --out site/tiles
```

## `tilecut index`

Write an `index.html` that shows a tile folder on a Leaflet map.

```text
tilecut index [OPTIONS] DIR
```

| Argument or option | Required | Default | Description |
| ------------------ | -------- | ------- | ----------- |
| `DIR` | Yes | | A folder written by `tilecut cut`. |
| `--title TEXT` | No | folder name | Page title. |

## Exit codes

| Code | Meaning |
| ---- | ------- |
| `0` | Success |
| `1` | The source could not be read or reprojected |
| `2` | Invalid arguments or options |

## Environment variables

See [Configuration](configuration.md#environment-variables).
