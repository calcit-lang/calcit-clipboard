## Calcit Clipboard

> Calcit binding to clipboard, based on [cli_clipboard](https://docs.rs/cli-clipboard/latest/cli_clipboard/index.html).

API 设计: https://github.com/calcit-lang/calcit_runner.rs/discussions/116 .

### Usages

APIs:

```cirru
clipboard.core/copy! |abc

; "actually read from clipboard"

clipboard.core/paste!
```

See [System clipboard boundary](docs/system-clipboard.md) for effect placement,
error behavior, and headless-environment constraints. The page is indexed by
`calcit docs read/search`.

Install with `caps add calcit-lang/clipboard@<tag>` and run `caps`. The project-local
`.calcit/modules/` view points at the versioned global module store. Compile and provide
the matching `*.{dylib,so}` file with `./build.sh`.

The native library exports the C-safe buffer FFI v1 protocol and requires Calcit
0.14.7 or newer. Shared descriptors, buffer ownership, Cirru EDN transport,
and adapters come from
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi).

原生库要求 Calcit 0.14.7 或更新版本，并通过共享 `calcit_native_ffi`
维护 descriptor、buffer ownership、Cirru EDN transport 与 adapter，不再在本
仓库复制协议模板。Legacy Rust ABI symbols are intentionally no longer exported.

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
