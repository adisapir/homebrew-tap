cask "network-pulse" do
  version "1.17.0"
  sha256 "003b6330185e4e267858d1b18bb681dc87e3d7a302a5fa5dc5364a3a7f243606"

  url "https://doccolabs.com/downloads/network-pulse-#{version}.dmg"
  name "Network Pulse"
  desc "Internet speed, Wi-Fi health and local network device monitor"
  homepage "https://doccolabs.com/"

  livecheck do
    url "https://doccolabs.com/downloads/network-pulse-update.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Network Pulse.app"

  zap trash: [
    "~/Library/Application Scripts/com.doccolabs.NetworkPulse-macOS",
    "~/Library/Application Scripts/com.doccolabs.NetworkPulse-macOS.WiFiPulseWidget",
    "~/Library/Containers/com.doccolabs.NetworkPulse-macOS",
    "~/Library/Containers/com.doccolabs.NetworkPulse-macOS.WiFiPulseWidget",
  ]
end
