cask "rambleflow" do
  version "0.1.0"
  sha256 "09bd9fd88961cfbf39f7084967f50301f364c0e9866924a3eb027dc34df47a1e"

  url "https://github.com/Emanuelel/RambleFlow/releases/download/v#{version}/RambleFlow-#{version}.dmg"
  name "RambleFlow"
  desc "Local voice typing for macOS"
  homepage "https://github.com/Emanuelel/RambleFlow"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "RambleFlow.app"
  artifact "timed-runtime", target: "#{Dir.home}/Library/Application Support/RambleFlow/timed-runtime"

  caveats "On first launch RambleFlow downloads about 4.4 GB of speech and cleanup models. After that it works offline. Upgrading from a build that bundled its speech model downloads that model once."

  zap trash: "~/Library/Application Support/RambleFlow"
end
