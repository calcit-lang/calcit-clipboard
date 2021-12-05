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

Install to `~/.config/calcit/modules/`, compile and provide `*.{dylib,so}` file with `./build.sh`.

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
