# Troubleshooting

Find your error message or symptom below. If it is not listed,
[open an issue](https://github.com/example-org/tilecut/issues) with the output of
`tilecut --version` and the full error.

## `ERROR: GDAL not found`

**Cause:** GDAL is not installed, or it is not on your `PATH`.

**Fix:** Install GDAL 3.6 or later and check it:

```sh
gdalinfo --version
```

## The map is blank at the highest zoom levels

**Cause:** The zoom range goes past the raster's resolution, so the top levels have no detail,
or `--zoom` did not include those levels.

**Fix:** Run `tilecut info` and cut no higher than the suggested maximum zoom.

## `ResumeMismatchError: zoom 10-14 does not match 10-12`

**Cause:** `--resume` was used with a different zoom range or format from the first run.

**Fix:** Use the same options as the first run, or cut into a new folder.
