## Calcit Clipboard

> Calcit binding to clipboard, based on [cli_clipboard](https://docs.rs/cli-clipboard/latest/cli_clipboard/index.html).

### 正式 0.30.1 配对：使用者影响

候选模块 **0.0.19** 要求正式 **Calcit 0.30.1**。下游同步 deps.cirru 的精确工具链声明并
保留 Caps strict；仅运行 native，没有 npm runtime / JS/WASM 配对，不部署业务应用。
候选号不等于已发布版本。

本次 Snapshot 与当前 main 相同。相对已发布 **0.0.18**，发布还会包含此前测试开关读取从
底层 &get-env 迁到公开 get-env/Option 合同；copy!/paste!、Rust、宿主副作用、错误与C-safe ABI
不变，不能称整个 Snapshot 与旧 tag 相同。真实读写仅在 CI 的隔离 Xvfb 与合成剪贴板中验收，
不读取或覆盖维护者桌面内容。
copy!/paste! 仍须由用户显式操作触发，类型通过不代表宿主权限或剪贴板可用。

原生 build.sh 从第一次 Cargo 调用起使用 --locked，锁不匹配时失败，不在安装时隐式修改。
保留平台产物复制规则，不再清空整个 dylibs；CI直接复用该入口，减少重复构建/复制。
Cargo crate 保持0.0.18，不发布 crates.io 包。下游重复构建步骤须独立验收后再精简。
原 Linux 构建报告 wl-clipboard-rs 0.7.0 的 Rust 未来不兼容警告；本轮只将锁文件中该
兼容依赖更新为正式 patch 0.7.1，不改后端选型或使用 Git fork。Xvfb 仅验收 X11，
不能据此宣称已完成真实 Wayland 桌面兼容验收。

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

本轮源码声明配对正式 Calcit `0.30.1`，不将 Linux 验收扩大为所有平台兼容声明。
本模块仅使用 native runtime，不依赖 `@calcit/procs`；既有 `0.0.18` tag 不移动。
默认入口显式声明 native target；公开的
`copy! : String → Unit` 与 `paste! : () → String` 合同保持不变。
Rust 依赖及 C-safe ABI 不变，不包含前端资源或 COS 部署。

CI 保留严格公开定义检查、Rust fmt/test/clippy、release dylib
符号审计、文档执行与 Xvfb 剪贴板往返测试，并补全所有项目命名空间的公开
定义检查；删除重复的报告型扫描，不增加新校验脚本。
本地不会读取或修改桌面剪贴板，宿主相关文档和集成测试以 Linux CI 为准。
`cargo test` 当前没有 Rust 单元测试，不能代替这项集成验收。
本地原匹配 alpha.5 的严格检查与构建不代替精确提交的正式 Linux CI；
CI不再使用已弃用的冗余 --strict-types 开关，默认严格全部定义检查保留。

Action 使用正式版本标签；标签可被上游移动，因此只读权限及禁用 checkout
凭据持久化仅限制令牌权限，不提供不可变供应链保证。

### License

MIT
