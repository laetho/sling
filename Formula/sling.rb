class Sling < Formula
  desc "CLI tool for Slingboard"
  homepage "https://github.com/laetho/sling"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.0/sling_darwin_arm64.tar.gz"
      sha256 "e9f02aa81d77d2a57004227f2168c5acb6e20e2e75f7768543ccccc476570c12"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.0/sling_darwin_amd64.tar.gz"
      sha256 "f04a3641d43b1bf6105022e4a2fa176959a8541c37a7eb7dbd10d054d9079fe9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.0/sling_linux_arm64.tar.gz"
      sha256 "79e49cfd6ec77d7de36b86eabda322f3c6ff14cf790c85e4f32fca4af8a5cf7b"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.0/sling_linux_amd64.tar.gz"
      sha256 "7870bd83a88fe9a9e9d4dc6d8ac45bc76feace8676871ccbe48476de0bd7175c"
    end
  end

  def install
    bin.install "sling"
  end

  test do
    system "#{bin}/sling", "--version"
  end
end
