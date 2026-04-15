cask "mdviewer" do
  version "1.0.1"
  sha256 "5953681e1d708faba5c5ecac539a28c61297da712fc8b8c31b92f282e4456305"

  url "https://github.com/ff2248/md-viewer/releases/download/v#{version}/MDViewer-v#{version}.dmg"
  name "MDViewer"
  desc "Minimal Markdown viewer with Quick Look support"
  homepage "https://github.com/ff2248/md-viewer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "MDViewer.app"

  zap trash: [
    "~/Library/Containers/io.github.ff2248.MDViewer.QuickLook",
    "~/Library/HTTPStorages/io.github.ff2248.MDViewer",
    "~/Library/Preferences/io.github.ff2248.MDViewer.plist",
    "~/Library/Saved Application State/io.github.ff2248.MDViewer.savedState",
  ]
end
