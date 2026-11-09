cask "xpaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "446dc78b878177738237a937a0ecc65a9084d419c46e6d79529a774740626609",
         intel: "94e3e278149391f13e71561f35d38cccd847c2a4f6c3fee74b853f7b9df0e03b"

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
