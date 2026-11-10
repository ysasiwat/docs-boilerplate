# Python API

Applies to tilecut 1.4.0. Full reference, generated from the code:
<https://example-org.github.io/tilecut/api/>.

```python
import tilecut
```

## Main entry points

| Function or class | Use it to |
| ----------------- | --------- |
| [`cut()`](#cut) | Cut a raster into tiles |
| [`Raster`](#raster) | Read a raster's metadata without cutting it |

### `cut()`

```python
tilecut.cut(source, out, zoom=None, fmt="png", resume=False) -> CutResult
```

Cut `source` into tiles under `out` and return the tile count and time taken.

```python
result = tilecut.cut("scene.tif", "tiles", zoom=(10, 14), fmt="webp")
print(result.tile_count, result.seconds)
```

Raises `TilecutError` when the source cannot be read or reprojected.

### `Raster`

```python
tilecut.Raster(path)
```

A GeoTIFF's metadata, the same values `tilecut info` prints.

```python
r = tilecut.Raster("scene.tif")
print(r.crs, r.resolution, r.suggested_zoom)
```

## Errors

| Exception | Raised when |
| --------- | ----------- |
| `TilecutError` | The source cannot be read or reprojected |
| `ResumeMismatchError` | `resume=True` but the zoom or format differs from the first run |
