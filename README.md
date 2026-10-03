## Calcit Clipboard

> Calcit binding to clipboard, based on [cli_clipboard](https://docs.rs/cli-clipboard/latest/cli_clipboard/index.html).

API 设计: https://github.com/calcit-lang/calcit_runner.rs/discussions/116 .

### Usages

APIs:

```cirru
clipboard.core/copy! |abc
```

Reading depends on clipboard contents supplied by another desktop client, so it is
documented without treating the host state as a deterministic documentation test:

```cirru.no-check
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

本仓库使用正式 Calcit 0.28.0，默认入口显式声明 native target；公开的
`copy! : String → Unit` 与 `paste! : () → String` 合同保持不变。
Rust 模块版本、依赖及 C-safe ABI 不变，不包含前端资源或 COS 部署。

CI 保留严格入口检查、零类型债务门禁、Rust fmt/test/clippy、release dylib
符号审计、文档执行与 Xvfb 剪贴板往返测试，并补全所有项目命名空间的公开
定义检查；删除重复的报告型扫描，不增加新校验脚本。
本地不会读取或修改桌面剪贴板，宿主相关文档和集成测试以 Linux CI 为准。
`cargo test` 当前没有 Rust 单元测试，不能代替这项集成验收。

Action 使用正式版本标签；标签可被上游移动，因此只读权限及禁用 checkout
凭据持久化仅限制令牌权限，不提供不可变供应链保证。

### License

MIT
