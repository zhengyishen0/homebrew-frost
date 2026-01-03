cask "frost" do
  version "1.0.4"
  sha256 "aa48b5d0e9fbd7541047ba45dfd90faf242d8688117aac4c76dfb7a650871024"

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
