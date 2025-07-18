cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.60.0"
  sha256 arm:   "30c828788bfc9be8c9739c77ec1ba119ff68d77502830ddb5de34d3db0e2493b",
         intel: "120a3dca23a60aecd88858f11fa4fd833db92f6ed0fe3727cccad25be83a92a3"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
