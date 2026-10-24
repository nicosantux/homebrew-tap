# Template for Formula/qcs.rb in the tap repository; the release workflow fills in the hashes.
class Qcs < Formula
  desc "Assign and inspect which git identity is used in each folder or repository"
  homepage "https://github.com/nicosantux/qcs"
  version "1.0.0" # x-release-please-version

  on_macos do
    on_arm do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-darwin-arm64.tar.gz"
      sha256 "1d2cd6423786244cc3078f49f9f1b847d2405c83a1608406ab3de69ce9b7cc86"
    end
    on_intel do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-darwin-x64.tar.gz"
      sha256 "d024c65e57105099cafee673ad4034fb0d3ba36c91883e5b7db0583ebd87d726"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-linux-arm64.tar.gz"
      sha256 "b674273ae1541203ee4ad59a3c6e192fbe4225cd070a715634f2a79afd11a993"
    end
    on_intel do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-linux-x64.tar.gz"
      sha256 "dbb7e03b9a8a91420b405c2a0614fa1f773d54221cbf15b0ce25cf8dcbaa9eb6"
    end
  end

  def install
    bin.install "qcs"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/qcs bogus 2>&1", 64)
  end
end
