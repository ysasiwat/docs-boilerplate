# Quickstart

Get your first map tiles from tilecut in about five minutes. You need tilecut installed; see
[Installation](installation.md).

1. Get the sample input:

   ```sh
   curl -LO https://github.com/example-org/tilecut/raw/main/examples/data/scene.tif
   ```

2. Cut it into tiles:

   ```sh
   tilecut cut scene.tif --zoom 10-12
   ```

   You should see:

   ```text
   Cutting scene.tif -> tiles/ (zoom 10-12)
   [####################] 21/21 tiles
   Done in 1.8 s
   ```

3. Check the result:

   ```sh
   ls tiles
   ```

   ```text
   10  11  12  tilecut.json
   ```

You now have a folder of PNG tiles that a web map can load.

## Next steps

- [Tile a satellite scene for a web map](examples/01-tile-a-satellite-scene.md): the same job with real options, start to finish.
- [Command line reference](reference/cli.md): every command and option.
