cask "xpaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "f86935d73fc15711e984fd311a7386a3eb961a89c6c912bfa2671769146a4689",
         intel: "14233a07afd6d0f98a5fd7efd6243f383d24fdb811d577f5f8a2995fac692243"

  url "https://github.com/Cocoon-break/xpaste/releases/download/v#{version}/xPaste_#{version}_#{arch}.dmg"
  name "xPaste"
  desc "Clipboard history with OCR search, screenshots and translation"
  homepage "https://cocoon-break.github.io/xpaste/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "xPaste.app"

  uninstall quit: "com.xpaste.app"

  zap trash: [
    "~/Library/Application Support/xPaste",
    "~/Library/Caches/com.xpaste.app",
    "~/Library/LaunchAgents/xPaste.plist",
    "~/Library/WebKit/com.xpaste.app",
  ]
end
