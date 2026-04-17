cask "mdviewer" do
  version "1.0.3"
  sha256 "6b138a28a2c4d32381d9cc2a4e4bc726f3b0a16064b3c50eb017fd673a93cf59"

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
