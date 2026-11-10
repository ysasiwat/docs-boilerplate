# Glossary

| Term | Definition |
| ---- | ---------- |
| CRS | Coordinate reference system: how a raster's pixels map to places on Earth, for example `EPSG:32647`. |
| GeoTIFF | A TIFF image that also stores its CRS and position. |
| Tile | A 256 × 256 pixel image for one square of the map at one zoom level. |
| Web Mercator | The CRS that web maps use, `EPSG:3857`. tilecut reprojects to it before cutting. |
| Zoom level | How far the map is zoomed in. Each level doubles the detail of the one before. |
