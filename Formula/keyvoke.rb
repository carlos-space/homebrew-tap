# Supported platforms: darwin/arm64, linux/arm64, linux/amd64
class Keyvoke < Formula
  desc "Command-line entrance to the Keyvoke secret service, for a person or a CI job"
  homepage "https://github.com/carlos-space/homebrew-tap"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v0.13.0/keyvoke-0.13.0-darwin-arm64.tar.gz"
      sha256 "a43a1fc8f2f41264db2029446c391152886ba413da101feb98ffa7a680a3f0a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v0.13.0/keyvoke-0.13.0-linux-arm64.tar.gz"
      sha256 "bf0a02b1e1dc9c47c1dff0b305f4673a2d2431323018f2d1fc8e6085ea5668cb"
    end
    on_intel do
      url "https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v0.13.0/keyvoke-0.13.0-linux-amd64.tar.gz"
      sha256 "b1540d6b7dc637f430034b201842e6de5e2a3823455dfec09ab2bfe7a2936212"
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
