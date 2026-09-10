---
title: "System clipboard boundary"
summary: "Copy and paste typed text through the operating-system clipboard while keeping permissions and host effects outside pure application logic"
scope: "module"
kind: "guide"
category: "system"
aliases:
  - "calcit clipboard"
  - "copy text"
  - "paste text"
  - "system clipboard"
  - "clipboard permission"
  - "headless clipboard"
  - "系统剪贴板"
entry_for:
  - "clipboard.core/copy!"
  - "clipboard.core/paste!"
---

# System clipboard boundary

`copy!` accepts `String` and returns `Unit`; `paste!` returns `String`. Both are synchronous operating-system effects and raise the native error when clipboard access is unavailable or denied.

```cirru.no-check
clipboard.core/copy! |https://example.test/share/42

let
    text $ clipboard.core/paste!
  validate-pasted-text text
```

Call these functions from an explicit UI command or adapter, not from a serial updater, Recollect projection, or Respo render function. Dispatch the validated pasted value as a typed operation if it must alter application state.

Clipboard availability depends on the desktop session. Linux CI commonly needs X11 libraries and a virtual display; remote servers and containers may have no clipboard at all. Treat clipboard errors as host-capability failures, not persistent application state.

The clipboard is also an untrusted data boundary. Validate pasted text before interpreting it as a URL, identifier, serialized message, filesystem path, or command argument. Do not copy secrets automatically during rendering or background synchronization.
