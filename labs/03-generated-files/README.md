# 03 - Generated Files

`version.h` is generated from `VERSION` before compilation. It is an implicit
dependency (`|`), so it affects ordering and dirtiness without appearing in the
compiler's `$in` list. `restat = 1` lets Ninja re-check whether the generator
actually changed the output.

```sh
ninja
./build/version
printf '2.0.0\n' > VERSION
ninja
./build/version
```
