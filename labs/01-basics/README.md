# 01 - Basics

This first graph has one rule and one build edge. `$in` and `$out` are Ninja's
special variables, while `message` is scoped to this build edge.

```sh
ninja
cat build/greeting.txt
ninja                 # expected: no work to do
ninja -t targets all
```

Try editing `message` in `build.ninja`, then rebuild. A command-line change is
itself enough to make an output dirty.
