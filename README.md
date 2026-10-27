## Calcit Clipboard

> Calcit binding to clipboard, based on [cli_clipboard](https://docs.rs/cli-clipboard/latest/cli_clipboard/index.html).

### 正式 0.31.0 配对：使用者影响

候选模块 **0.0.20** 要求正式 **Calcit 0.31.0**。下游同步 deps.cirru 的精确工具链声明并
保留 Caps strict；本模块仅支持 native，没有 npm runtime / JS/WASM 配对。
候选号不等于已发布版本；发布前仍使用已有正式 tag，不移动历史 tag。

相对已发布 **0.0.19**，本次仅更新工具链声明及说明，Snapshot、Rust、Cargo.lock、
`copy! : String → Unit`、`paste! : () → String` 和 C-safe ABI 均不变。
剪贴板读写仍须由用户显式操作触发；类型检查通过不代表宿主权限或剪贴板可用。
真实读写沿用原 CI 的隔离 Xvfb 和合成剪贴板验收，不读取或覆盖维护者桌面内容。
Xvfb 仅验收 X11，不能据此宣称完成真实 Wayland 桌面兼容验收。

原生 build.sh 从第一次 Cargo 调用起使用 --locked，锁不匹配时失败，不在安装时隐式修改。
保留平台产物复制规则，不清空整个 dylibs；CI 复用该入口。
Cargo crate 保持 0.0.18，不发布 crates.io 包。

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

本轮源码声明配对正式 Calcit `0.31.0`，不将 Linux 验收扩大为所有平台兼容声明。
本模块不依赖 `@calcit/procs`，不包含前端资源或 COS 部署。
默认入口显式声明 native target。

CI 保留全部定义严格检查、Rust fmt/test/clippy、release dylib 符号审计、文档执行与
Xvfb 剪贴板往返测试，不增加校验脚本或放宽门禁。
`cargo test` 当前没有 Rust 单元测试，不能代替剪贴板集成验收。
本地不会读取或修改桌面剪贴板，宿主相关文档和集成测试以精确提交的 Linux CI 为准。

Action 使用正式版本标签；标签可被上游移动，因此只读权限及禁用 checkout
凭据持久化仅限制令牌权限，不提供不可变供应链保证。

### License

MIT
