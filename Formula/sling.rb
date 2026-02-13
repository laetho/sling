class Sling < Formula
  desc "CLI tool for Slingboard"
  homepage "https://github.com/laetho/sling"
  version "0.8.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.9/sling_darwin_arm64.tar.gz"
      sha256 "91c7de7dd8eda2a62d924a4df189d4ac4a1292f1279cd55956d218fef798574a"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.9/sling_darwin_amd64.tar.gz"
      sha256 "ae0fedacebe3c60709c1cf05e42d05879ba894f9833ced73f9cfebf1cfcce5c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.9/sling_linux_arm64.tar.gz"
      sha256 "008478d2390f499f42f660c269c82f610d043de95d8a9abbda69924fd700acdb"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.9/sling_linux_amd64.tar.gz"
      sha256 "dc139864685fcf438079e3c38cbd6682beeea071df79d07f95d3d65dedfb9b34"
    end
  end

  def install
    bin.install "sling"
  end

  test do
    system "#{bin}/sling", "--version"
  end
end
