cask "coldbru" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "833b776b9bc779ab6d477ae8fb8d97dc330bffd480d9bb0bffabe26ab150f6a9",
         intel: "3a3d210850642611a270f09337fc07a3e66ed59ffe7697e63f0694d5422f8ebc"

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
