class Sling < Formula
  desc "CLI tool for Slingboard"
  homepage "https://github.com/laetho/sling"
  version "0.8.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.6/sling_darwin_arm64.tar.gz"
      sha256 "b6a710cb3366f0ee98e60d1407dbfd65d9fdd7916f78227d28a90f0d0b9e377c"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.6/sling_darwin_amd64.tar.gz"
      sha256 "2b5899d5ac7089dd5582d22dffb513a3172f23e2b966a08c54d4a83b9076ac0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.6/sling_linux_arm64.tar.gz"
      sha256 "36f7e3a7d7f3b8861d29be04856d1eeedfb51a345e582fe1cc4d66800f0c5213"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.6/sling_linux_amd64.tar.gz"
      sha256 "27824745e3785ce5bb266eb3b58e6d7a0d234a9d5ed58428d2e68208a352fab4"
    end
  end

  def install
    bin.install "sling"
  end

  test do
    system "#{bin}/sling", "--version"
  end
end
