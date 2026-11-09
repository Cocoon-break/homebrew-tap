cask "xpaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "760862a6621304ad36aef9980aaf1a3de8832847bb1e5617ab58ca8d5bb756a6",
         intel: "d5ff19e003b582ed68bf3aa97aee0696b1318ca20c22034a9894468ea60c9be0"

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
