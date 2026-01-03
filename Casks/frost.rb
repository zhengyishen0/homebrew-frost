cask "frost" do
  version "1.0.3"
  sha256 "5ad38b8394d45fba59303fd82dd02163a3abf194d5e28cfa0d684a57fbf53164"

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
