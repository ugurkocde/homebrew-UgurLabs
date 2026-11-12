# Updated by the Release workflow of ugurkocde/TenuVault on every stable release.
cask "tenuvault" do
  arch arm: "arm64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "b842f05ccfc60d98ec8c74e0e6b9ce3366aa1982c80681806b4670f20c7fe8cd",
         intel: "7dbd8f5e89f8181cf6ccb343d5e2983d56064f80b0415ec7e189b576df6b3f36"

  url "https://github.com/ugurkocde/TenuVault/releases/download/v#{version}/TenuVault-#{version}-mac-#{arch}.dmg",
      verified: "github.com/ugurkocde/TenuVault/"
  name "TenuVault"
  desc "Back up and restore Microsoft Intune configuration"
  homepage "https://www.tenuvault.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "TenuVault.app"
end
