cask "coldbru" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "2c799ad4e52f533f83f134b9ddaac185678e2f344981c4b6e75f349ea9c1f255",
         intel: "2dd687338c92af76b2e02df89a2e100e13b7ac13e011b34a47bdf7bab3052724"

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
