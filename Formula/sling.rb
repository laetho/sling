class Sling < Formula
  desc "CLI tool for Slingboard"
  homepage "https://github.com/laetho/sling"
  version "0.8.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.5/sling_darwin_arm64.tar.gz"
      sha256 "7e18090c11d25b1a098b6f1a86d508f9e115735cdfa05da352f084dfa2120800"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.5/sling_darwin_amd64.tar.gz"
      sha256 "927ce1cefac4de7e032e13253d573cc61245cdc75971c66a762ceb7be5f1c9d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/laetho/sling/releases/download/v0.8.5/sling_linux_arm64.tar.gz"
      sha256 "10f43da9f324a070071b27c5a836a7302b3f5440a1fdc31d608e786a07bbd684"
    else
      url "https://github.com/laetho/sling/releases/download/v0.8.5/sling_linux_amd64.tar.gz"
      sha256 "45a9bd9f5464d95996d0b8334f3f2042e4b0df8b050264ca09de2ca61830d943"
    end
  end

  def install
    bin.install "sling"
  end

  test do
    system "#{bin}/sling", "--version"
  end
end
