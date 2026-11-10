cask "xpaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "5475758285b92230cab720e4e702eed32ba60c61ae4e5d4a46b3e47a0635b455",
         intel: "fdeae1e7c27cacb6f66fbf538136847cbe461c684a445958dba1da55e9852b4a"

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
