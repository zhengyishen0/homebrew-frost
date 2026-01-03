cask "frost" do
  version "1.0.5"
  sha256 "0f2109da9ad269ed9cc23917ea813836bf6f85a0ca580bac64e4ba7bcbfa72a0"

  url "https://github.com/zhengyishen0/frost-app/releases/download/v#{version}/Frost-#{version}.dmg"
  name "Frost"
  desc "Focus on what matters - blur distractions"
  homepage "https://github.com/zhengyishen0/frost-app"

  depends_on macos: ">= :sonoma"

  app "Frost.app"

  zap trash: [
    "~/Library/Preferences/com.example.frost.plist",
    "~/Library/Application Support/Frost",
  ]
end
