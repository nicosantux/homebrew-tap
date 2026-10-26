# Template for Formula/qcs.rb in the tap repository; the release workflow fills in the hashes.
class Qcs < Formula
  desc "Assign and inspect which git identity is used in each folder or repository"
  homepage "https://github.com/nicosantux/qcs"
  version "1.2.0" # x-release-please-version

  on_macos do
    on_arm do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-darwin-arm64.tar.gz"
      sha256 "42b1e4ea7b778e9263dc5575a52f13490a8c796035abb1c95ebaaf02aed83fe9"
    end
    on_intel do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-darwin-x64.tar.gz"
      sha256 "a1a63694f37be50cc579396414e72fe80687f29e4ee682ad9706794f33061bfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-linux-arm64.tar.gz"
      sha256 "ea1173d3cc845c8a0bfbe483e800150127c95c686ed63ae70889b28f9ecc9611"
    end
    on_intel do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-linux-x64.tar.gz"
      sha256 "8e46f525e94c1c6c8e99fa52504049cdb059a6d9ab3f63f6032160df941662da"
    end
  end

  def install
    bin.install "qcs"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/qcs bogus 2>&1", 64)
  end
end
