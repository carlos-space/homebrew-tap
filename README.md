# homebrew-tap

Release repository for command-line tools. It holds executables, checksums and Homebrew formulae only.

## keyvoke

Command-line entrance to the Keyvoke secret service, for a person or a CI job. Supported platforms: darwin/arm64, linux/arm64, linux/amd64.

### Install with Homebrew

```bash
brew install carlos-space/tap/keyvoke
```

### Install with curl

Set the version and your platform, download the archive and the checksum file, and check the archive before you unpack it. The `sha256sum` (Linux) or `shasum -a 256` (macOS) line exits non-zero and nothing is installed when the checksum does not match.

```bash
VERSION=0.11.0
PLATFORM=linux-arm64   # darwin-arm64, linux-arm64 or linux-amd64
BASE="https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v${VERSION}"
ARCHIVE="keyvoke-${VERSION}-${PLATFORM}.tar.gz"
curl -fsSLO "${BASE}/${ARCHIVE}"
curl -fsSLO "${BASE}/keyvoke-${VERSION}.sha256"
grep " ${ARCHIVE}\$" "keyvoke-${VERSION}.sha256" | sha256sum -c -        # macOS: | shasum -a 256 -c -
tar -xzf "${ARCHIVE}" keyvoke
sudo install -m 0755 keyvoke /usr/local/bin/keyvoke
keyvoke --version
```

Releases are tagged `<package>/v<version>`, for example `keyvoke-cli/v0.11.0`.
