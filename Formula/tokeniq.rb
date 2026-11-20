# typed: false
# frozen_string_literal: true

# The TokenIQ CLI (Xosphere). Binaries are published by tokeniq-cli's release
# workflow to the public release bucket; update version and the four sha256
# values from that release's checksums.txt.
class Tokeniq < Formula
  desc "CLI for Xosphere TokenIQ: AI economics data, gateway configuration and keys"
  homepage "https://xosphere.io"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://xosphere-io-releases.s3.us-west-2.amazonaws.com/tokeniq/cli/0.1.0/tokeniq_0.1.0_darwin_arm64.tar.gz"
      sha256 "25ba785d022acc058ac6ba771972fb5a844502dd4a1d7ae8ab5717fad07de82a"
    end
    on_intel do
      url "https://xosphere-io-releases.s3.us-west-2.amazonaws.com/tokeniq/cli/0.1.0/tokeniq_0.1.0_darwin_amd64.tar.gz"
      sha256 "b17092da23880884275412656b5070f2819e8826cac3e1e2dd68563daf425e59"
    end
  end

  on_linux do
    on_arm do
      url "https://xosphere-io-releases.s3.us-west-2.amazonaws.com/tokeniq/cli/0.1.0/tokeniq_0.1.0_linux_arm64.tar.gz"
      sha256 "b8279db3710ddcc92ba2488428576f67786ede9b6a12db499b50d043224ee0ed"
    end
    on_intel do
      url "https://xosphere-io-releases.s3.us-west-2.amazonaws.com/tokeniq/cli/0.1.0/tokeniq_0.1.0_linux_amd64.tar.gz"
      sha256 "7d00d70de5fe4b3e42a5a97c6222171fbfefb1b566612c14a9090193179bd0a0"
    end
  end

  def install
    bin.install "tokeniq"
  end

  test do
    assert_match "tokeniq v#{version}", shell_output("#{bin}/tokeniq version")
  end
end
