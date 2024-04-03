An experimental Wasm interpreter written in Dart.

## Useful docs

- https://webassembly.github.io/spec/core/_download/WebAssembly.pdf
- https://webassembly.github.io/spec/core/exec/runtime.html
- https://webassembly.github.io/spec/core/intro/introduction.html
- https://developer.mozilla.org/en-US/docs/WebAssembly/Understanding_the_text_format
- https://webassembly.github.io/spec/core/appendix/index-instructions.html

## Conformance tests

We generate our spec tests from the conformance suite at
https://github.com/WebAssembly/spec/tree/main/test/core.

You need to have the wabt tools (wat2wasm, wasm2wat, ...) installed locally.

```shell
wast2json --debug-names -o test/spec/align/align.json spec/test/core/align.wast
```

## Benchmarking

todo:

## Re-building

todo:

### Updating the spec files

- `git submodule update`

or:

- `git submodule update --remote`
