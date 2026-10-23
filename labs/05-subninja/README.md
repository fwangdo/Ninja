# 05 - Include and Subninja

The top-level manifest includes shared configuration and delegates build edges
to `src/build.ninja`. An `include` shares the current variable scope, while a
`subninja` file gets a child scope: it can use `cflags`, but its local override
does not leak back to the parent.

```sh
ninja
./build/app
ninja -t targets all
```

Change the `cflags` assignment inside `src/build.ninja` and inspect the commands
with `ninja -t commands`.
