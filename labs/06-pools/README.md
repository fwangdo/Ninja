# 06 - Pools

Ninja normally schedules as many ready edges as its global job limit permits.
The custom pool below caps the simulated expensive tasks at two concurrent
processes, even when `-j` is larger.

```sh
ninja -j 8
ninja -t clean
ninja -j 1          # compare elapsed time
```

The four output files record their task names. Edit `depth` in `build.ninja`
and compare the build time again.
