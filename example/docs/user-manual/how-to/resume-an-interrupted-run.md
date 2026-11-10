# Resume an interrupted run

Use this when `tilecut cut` stopped part way, for example after Ctrl+C or a full disk, and you
do not want to cut the finished tiles again.

## Before you start

- The output folder from the stopped run still exists and holds `tilecut.json`.

## Steps

1. Fix whatever stopped the run, for example free disk space.
2. Run the same command again with `--resume`:

   ```sh
   tilecut cut scene.tif --zoom 10-14 --out tiles --resume
   ```

3. Check that it worked:

   ```text
   Resuming: 812 of 1365 tiles already done
   [####################] 1365/1365 tiles
   Done in 17.9 s
   ```

`--resume` refuses to run when the zoom range or format differs from the first run, so two
cuts never mix in one folder.

## See also

- [Zoom levels and tiles](../concepts/zoom-levels-and-tiles.md)
- [Command line reference](../reference/cli.md)
