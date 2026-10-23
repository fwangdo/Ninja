# Labs

These labs turn the main concepts in the official Ninja manual into small,
independent exercises. Run Ninja from inside each lab directory.

| Lab | Main ideas |
| --- | --- |
| `01-basics` | rules, build edges, variables, default targets |
| `02-incremental-c` | compile/link graph, depfiles, header dependencies |
| `03-generated-files` | generated headers, implicit dependencies, `restat` |
| `04-static-library` | archive inputs, reusable rules, phony targets |
| `05-subninja` | splitting a graph with `include` and `subninja` |
| `06-pools` | limiting concurrent work with a custom pool |

To check everything from the repository root:

```sh
sh scripts/check-labs.sh
```

The checker builds each lab twice. The second build must have no work to do,
which catches outputs or dependencies that were described incorrectly.

Useful inspection commands:

```sh
ninja -t targets all
ninja -t commands
ninja -t graph > build/graph.dot
```

Reference: <https://ninja-build.org/manual.html>
