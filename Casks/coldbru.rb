cask "coldbru" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "640dcabaff18c789651d23bf6d7928541fbe5949745616fd4fc2429d89f0e150",
         intel: "17b810fb38b93b0cc0c705e4e92cff7d12183451bfb81211f34ebf4871757fe9"

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
