# FAQ

## Can tilecut read formats other than GeoTIFF?

Yes, any raster GDAL can read, such as JPEG2000 or a VRT. GeoTIFF is the only format tested
for each release. See [Install tilecut](installation.md) for the GDAL version.

## How much disk space do the tiles need?

Roughly a third of the source size for WebP and the full source size for PNG, at the
suggested zoom range. See [Zoom levels and tiles](concepts/zoom-levels-and-tiles.md).
