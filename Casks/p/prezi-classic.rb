cask "prezi-classic" do
  version "6.14.0,24153"
  sha256 "ed9cc68796e4a055fa01cd28ab593370b6f4d87a937237e2f23f7fba9c70f332"

  url "https://desktopassets.prezi.com/mac/pd6/releases/Prezi_Classic_#{version.csv.first}.dmg"
  name "Prezi Classic"
  desc "Desktop client for the Prezi presentation SaaS"
  homepage "https://prezi.com/desktop"

  no_autobump! because: :requires_manual_review

  disable! date: "2025-04-05", because: :discontinued

  app "Prezi Classic.app"

  zap trash: [
    "~/Library/Application Support/com.prezi.desktop",
    "~/Library/Caches/com.prezi.desktop",
    "~/Library/Logs/Prezi Classic",
    "~/Library/Logs/Prezi Classic_debug.log",
    "~/Library/Preferences/com.prezi.desktop.plist",
    "~/Library/Saved Application State/com.prezi.desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
