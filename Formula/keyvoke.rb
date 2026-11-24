# Supported platforms: darwin/arm64, linux/arm64, linux/amd64
class Keyvoke < Formula
  desc "Command-line entrance to the Keyvoke secret service, for a person or a CI job"
  homepage "https://github.com/carlos-space/homebrew-tap"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v0.12.0/keyvoke-0.12.0-darwin-arm64.tar.gz"
      sha256 "ac9cc9a27c5918aa204705c7d603cf3702935fda07662f54be877a02891c8ea1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v0.12.0/keyvoke-0.12.0-linux-arm64.tar.gz"
      sha256 "925fa811f522690829ea419fa0de5117734e5ff39c81325c27386a530f194c9b"
    end
    on_intel do
      url "https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v0.12.0/keyvoke-0.12.0-linux-amd64.tar.gz"
      sha256 "654ea0399cd8c35571be0b31bc50833a443a1ec8b31534b9d159a42aeb4a83a2"
    end
  end

  def install
    bin.install "keyvoke"
    bin.install_symlink "keyvoke" => "keyvoke-token-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyvoke --version")
  end
end
