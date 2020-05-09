class Motoko < Formula
  desc "Based on Go modules, update a dependency to a major version"
  homepage "https://github.com/ldez/motoko"
  url "https://github.com/ldez/motoko/releases/download/v0.1.1/motoko_v0.1.1_darwin_amd64.tar.gz"
  version "0.1.1"
  sha256 "754103290a5eca544610e3760ff67c0e9421a4603bba2ec930a6a9d044e0203a"

  def install
    bin.install "motoko"
  end

  test do
    system "#{bin}/motoko version"
  end
end
