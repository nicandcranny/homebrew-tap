cask "coldbru" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "a32cabaf47113052512c6e556d8858311fd5f54ae963894175510e8eaca0bf81",
         intel: "27dcef877fae46f389881ef945019a6572d04935b3590424c15545022c3bb290"

  url "https://github.com/nicandcranny/coldbru/releases/download/v#{version}/coldbru_#{version}_#{arch}_mac.dmg"
  name "ColdBru"
  desc "Local-first Git-based API client"
  homepage "https://github.com/nicandcranny/coldbru"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ColdBru.app"
end
