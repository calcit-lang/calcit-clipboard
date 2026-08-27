## Calcit Clipboard

> Calcit binding to clipboard, based on [cli_clipboard](https://docs.rs/cli-clipboard/latest/cli_clipboard/index.html).

API 设计: https://github.com/calcit-lang/calcit_runner.rs/discussions/116 .

### Usages

APIs:

```cirru
clipboard.core/copy! "|abc"

; "actually read from clipboard"
clipboard.core/paste!
```

Install with `caps add calcit-lang/clipboard@<tag>` and run `caps`. The project-local
`.calcit/modules/` view points at the versioned global module store. Compile and provide
the matching `*.{dylib,so}` file with `./build.sh`.

The native library exports the C-safe buffer FFI v1 protocol and requires Calcit
0.13.52 or newer. Legacy Rust ABI symbols are intentionally no longer exported.

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
