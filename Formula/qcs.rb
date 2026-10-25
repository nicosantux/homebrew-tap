# Template for Formula/qcs.rb in the tap repository; the release workflow fills in the hashes.
class Qcs < Formula
  desc "Assign and inspect which git identity is used in each folder or repository"
  homepage "https://github.com/nicosantux/qcs"
  version "1.1.0" # x-release-please-version

  on_macos do
    on_arm do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-darwin-arm64.tar.gz"
      sha256 "b597a42cb44c2cb49399a686015b1ca9e0ade703c08dedce5d4ac83ee859e546"
    end
    on_intel do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-darwin-x64.tar.gz"
      sha256 "6b83e79eb4407b9996b336282250cbcfcc6a5d958824abf7aa68c909b022d4ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-linux-arm64.tar.gz"
      sha256 "d81e884641b9c0e6f4ab443e361a8a3ff327019183ec6b273fb14e2cafc84d3a"
    end
    on_intel do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-linux-x64.tar.gz"
      sha256 "3c84ef6aa8edac4398f8b36e03cbfbb1d212e02dccaeea33ca7133d4221578a5"
    end
  end

  def install
    bin.install "qcs"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/qcs bogus 2>&1", 64)
  end
end
