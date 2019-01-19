class Motoko < Formula
  desc "Based on Go modules, update a dependency to a major version."
  homepage "https://github.com/ldez/motoko"
  url "https://github.com/ldez/motoko/releases/download/v0.1.0/motoko_v0.1.0_darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "4ecf8e2ac0d33eaedd9165853f16a0256590a7a324e7df3d189541eee60566c2"

  def install
    bin.install "motoko"
  end

  test do
    system "#{bin}/motoko version"
  end
end
