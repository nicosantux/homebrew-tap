# Template for Formula/qcs.rb in the tap repository; the release workflow fills in the hashes.
class Qcs < Formula
  desc "Assign and inspect which git identity is used in each folder or repository"
  homepage "https://github.com/nicosantux/qcs"
  version "1.0.1" # x-release-please-version

  on_macos do
    on_arm do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-darwin-arm64.tar.gz"
      sha256 "21fd65f33ca5c437863e2debc7d80da66927f734141734b383272a18383a4942"
    end
    on_intel do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-darwin-x64.tar.gz"
      sha256 "8af37d6ffa502f34d7e8250812b7edea22f59074e2fdec18cd0f7cca0fbccb72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-linux-arm64.tar.gz"
      sha256 "28e0fd2fcb25a70293165ce28c2761f6ae8eab526628e1d808d5eb9403473107"
    end
    on_intel do
      url "https://github.com/nicosantux/qcs/releases/download/v#{version}/qcs-linux-x64.tar.gz"
      sha256 "eba52488af7cd6c678cd0b37e22613a5a858f07584fad2e630512eff33f4762c"
    end
  end

  def install
    bin.install "qcs"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/qcs bogus 2>&1", 64)
  end
end
