# 02 - Incremental C Build

The compiler emits a Make-style depfile alongside each object. `deps = gcc`
tells Ninja to load those header dependencies into its dependency database.

```sh
ninja
./build/hello
ninja                 # expected: no work to do
touch message.h
ninja                 # recompiles hello.o, then relinks
```

Use `ninja -t deps build/hello.o` to see the discovered header dependency.
