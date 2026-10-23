# 04 - Static Library

This graph compiles two objects, archives one into a library, and links the
other against it. The `all` target is an alias made with Ninja's built-in
`phony` rule.

```sh
ninja
./build/app
ninja -t commands all
touch greeter.c && ninja
```

Only the library object, archive, and final executable should rebuild after the
last command; `main.o` remains clean.
