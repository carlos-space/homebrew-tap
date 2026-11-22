# Supported platforms: darwin/arm64, linux/arm64, linux/amd64
class Keyvoke < Formula
  desc "Command-line entrance to the Keyvoke secret service, for a person or a CI job"
  homepage "https://github.com/carlos-space/homebrew-tap"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v0.11.0/keyvoke-0.11.0-darwin-arm64.tar.gz"
      sha256 "05ec7dea6b4e7182766fe6ac279b7bb2115ccf3594c8ea48ae8ccd316a545f8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v0.11.0/keyvoke-0.11.0-linux-arm64.tar.gz"
      sha256 "27c520c9d2930cb55cf951192a1ffe4503ec138c686be63244b6653893782cb9"
    end
    on_intel do
      url "https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v0.11.0/keyvoke-0.11.0-linux-amd64.tar.gz"
      sha256 "3d2631beef79dc6c93d12be3700e3d00ab3679360827dce7fe35034739c52007"
    end
  end

  def install
    bin.install "keyvoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyvoke --version")
  end
end
