cask "mdviewer" do
  version "1.0.4"
  sha256 "768e370f0a6b80134b979d5cbbf6e420e4da0adbaf7cbe9bfec2bf935c6385c3"

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
