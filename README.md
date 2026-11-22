# homebrew-tap

Release repository for command-line tools. It holds executables, checksums and Homebrew formulae only.

## keyvoke

Command-line entrance to the Keyvoke secret service, for a person or a CI job. Supported platforms: darwin/arm64, linux/arm64, linux/amd64.

### Install with Homebrew

```bash
brew install carlos-space/tap/keyvoke
```

### Install with curl

Set the version and your platform, then run the rest as one command. It downloads the archive and the checksum file and checks the archive before it unpacks it. Each step runs only when the step before it succeeded, so when the checksum does not match, the check prints `FAILED`, the command stops there and nothing is unpacked or installed. The check uses `sha256sum` when it is there (Linux) and `shasum -a 256` otherwise (macOS).

```bash
VERSION=0.11.0
PLATFORM=linux-arm64   # darwin-arm64, linux-arm64 or linux-amd64
BASE="https://github.com/carlos-space/homebrew-tap/releases/download/keyvoke-cli/v${VERSION}"
ARCHIVE="keyvoke-${VERSION}-${PLATFORM}.tar.gz"
curl -fsSLO "${BASE}/${ARCHIVE}" &&
  curl -fsSLO "${BASE}/keyvoke-${VERSION}.sha256" &&
  grep " ${ARCHIVE}\$" "keyvoke-${VERSION}.sha256" |
    { if command -v sha256sum >/dev/null; then sha256sum -c -; else shasum -a 256 -c -; fi; } &&
  tar -xzf "${ARCHIVE}" keyvoke &&
  sudo install -m 0755 keyvoke /usr/local/bin/keyvoke &&
  keyvoke --version
```

Releases are tagged `<package>/v<version>`, for example `keyvoke-cli/v0.11.0`.
