# Updated by the Release workflow of ugurkocde/TenuVault on every stable release.
cask "tenuvault" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "710d5b9755aa270d4d85fdcc2ed5047dc5adb1420c8886fc84897ded3f057920",
         intel: "c79da170031e5104c6dc96548472f585ccf02ab13aab96946a8c9f24d2757570"

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
