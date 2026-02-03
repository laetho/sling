class Sling < Formula
  desc "CLI tool for Slingboard"
  homepage "https://github.com/laetho/sling"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.7.0/sling_darwin_arm64.tar.gz"
      sha256 "b4cc97555ac4911d84789af88f0e04d2637f1e9a97dbc1242f5b50b1204a8976"
    else
      url "https://github.com/laetho/sling/releases/download/v0.7.0/sling_darwin_amd64.tar.gz"
      sha256 "c1aaba8a1c73534805daaeb232648aea6cd388c2d3645680a0e8868e999d0dd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.7.0/sling_linux_arm64.tar.gz"
      sha256 "aa3bf343fe1fc4875d18c0f093e41ec5a546c4ac2d5d7c63ede71e7ee3b73e92"
    else
      url "https://github.com/laetho/sling/releases/download/v0.7.0/sling_linux_amd64.tar.gz"
      sha256 "46cf5abf4f581b4c0a0496cfc491c652d875603d968ede555c6a05ab3df1a682"
    end
  end

  def install
    bin.install "sling"
  end

  test do
    system "#{bin}/sling", "--version"
  end
end
