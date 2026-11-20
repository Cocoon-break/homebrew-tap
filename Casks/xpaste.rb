cask "xpaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "3e23a17b4832f0b1aac52251d97748e9cad66d65db19fb0510515637403f089c",
         intel: "b55eb07401542d081e492cc28b520d8f0b914630d430fd8c8e081cb657cbbca4"

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
