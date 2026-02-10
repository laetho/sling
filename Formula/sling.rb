class Sling < Formula
  desc "CLI tool for Slingboard"
  homepage "https://github.com/laetho/sling"
  version "0.8.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.7/sling_darwin_arm64.tar.gz"
      sha256 "a878527767faab7fe4b829f1364020e4b513af1e065667a8349e0e5f4da5ea4d"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.7/sling_darwin_amd64.tar.gz"
      sha256 "c71c2e240f4d4db81a6ca990efa24b8f4b0525008ce7c8cf6161cba7001353ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.7/sling_linux_arm64.tar.gz"
      sha256 "163e254fe216ac55a9c9410e000a08715a998da7b5cb6edcbcda92f37621e6e0"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.7/sling_linux_amd64.tar.gz"
      sha256 "05b24515ee6170cd2727561f858c7d2d1ff38aa35683b4a87b1020549119b997"
    end
  end

  def install
    bin.install "sling"
  end

  test do
    system "#{bin}/sling", "--version"
  end
end
