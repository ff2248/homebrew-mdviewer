cask "mdviewer" do
  version "1.0.0"
  sha256 "462040a76d6bef1c711b914351bd72a3ecff7ada9d47501b42465e353d2d2c15"

  url "https://github.com/ff2248/md-viewer/releases/download/v#{version}/MDViewer-v#{version}.dmg"
  name "MDViewer"
  desc "Minimal macOS Markdown viewer with Quick Look support"
  homepage "https://github.com/ff2248/md-viewer"

  depends_on macos: ">= :sonoma"

  app "MDViewer.app"

  postflight do
    system_command "/usr/bin/qlmanage", args: ["-r"], print_stderr: false
  end

  zap trash: [
    "~/Library/Preferences/io.github.ff2248.MDViewer.plist",
  ]
end
