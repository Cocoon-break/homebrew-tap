# Cocoon-break/homebrew-tap

[xPaste](https://github.com/Cocoon-break/xpaste) 的 Homebrew tap。xPaste 是免费、开源、纯本地的 macOS / Windows 剪切板历史，截图里的字、文件里的内容、拼音首字母都能搜到。

## 安装

```sh
brew trust --cask cocoon-break/tap/xpaste
brew install --cask cocoon-break/tap/xpaste
```

第一行是 Homebrew 对第三方 tap 的要求：先声明信任这个 cask，Homebrew 才会加载它。只信任 xPaste 这一个 cask，不是整个 tap。

需要 macOS 13 及以上，Apple 芯片和 Intel 都支持。安装包已用 Developer ID 签名并经过 Apple 公证；第一次打开时系统会提示“是从互联网下载的 App”，点“打开”即可。

## 升级与卸载

```sh
brew upgrade --cask xpaste
brew uninstall --cask xpaste          # 只删应用，历史记录保留
brew uninstall --zap --cask xpaste    # 连历史记录、缓存和开机启动项一起删
```

升级后“辅助功能”和“屏幕录制”的授权会保留。

## 维护

`Casks/xpaste.rb` 由 xPaste 仓库的发版流程（`.github/workflows/release.yml` 的 `tap` 任务）在每次发布新版本后自动更新版本号和 sha256，不要手动改这两处。
