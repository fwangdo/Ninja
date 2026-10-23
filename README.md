# Ninja

Personal workspace for studying the [Ninja build system](https://ninja-build.org/).

Ninja is deliberately a low-level build executor. The examples here therefore
focus on expressing dependency graphs precisely and observing incremental build
behavior, rather than treating `build.ninja` as a general-purpose scripting
language.

## Layout

- `lecs/`: lecture notes.
- `labs/`: small, self-contained exercises based on the official manual.
- `scripts/`: repository-wide helpers.

## Setup

Install Ninja and a C compiler. On macOS:

```sh
brew install ninja
xcode-select --install
```

Check the tools and run every lab:

```sh
ninja --version
cc --version
sh scripts/check-labs.sh
```

## Study Flow

1. Read the matching part of the [Ninja manual](https://ninja-build.org/manual.html).
2. Open a lab's `README.md` and inspect its `build.ninja` before running it.
3. Build once, run again to see `no work to do`, then change an input and observe
   the smallest part of the graph that rebuilds.
4. Use `ninja -t targets`, `ninja -t commands`, and `ninja -t graph` to inspect
   what Ninja understood.
