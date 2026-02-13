class Sling < Formula
  desc "CLI tool for Slingboard"
  homepage "https://github.com/laetho/sling"
  version "0.8.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.8/sling_darwin_arm64.tar.gz"
      sha256 "7437f890d54ba3053c3a59cf483e3e029c283d483731f5a27b0699bbc7d866cf"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.8/sling_darwin_amd64.tar.gz"
      sha256 "d5789be7469c8a9730113979724b4756df389d85c9136608627fd084ea9ecc5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.8/sling_linux_arm64.tar.gz"
      sha256 "83594e3836b8c05bb772b89f2e383a2bef95a3f0c83f9c8c2ef331ad131e7fa6"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.8/sling_linux_amd64.tar.gz"
      sha256 "a9c314b6894ee61349efe41f60980b16324f05ed9c36e0ca160576bdab58ea5e"
    end
  end

  def install
    bin.install "sling"
  end

  test do
    system "#{bin}/sling", "--version"
  end
end
