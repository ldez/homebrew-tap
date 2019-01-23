class Prm < Formula
  desc "Pull Request Manager for Maintainers"
  homepage "https://github.com/ldez/prm"
  url "https://github.com/ldez/prm/releases/download/v2.4.1/prm_v2.4.1_darwin_amd64.tar.gz"
  version "2.4.1"
  sha256 "05c8b28678923abc66a39f330d663ca089740b7306e34d2cbb284184bb9bf6af"

  def install
    bin.install "prm"
  end

  test do
    system "#{bin}/prm version"
  end
end
