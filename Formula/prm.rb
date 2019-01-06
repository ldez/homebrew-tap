class Prm < Formula
  desc "Pull Request Manager for Maintainers"
  homepage "https://github.com/ldez/prm"
  url "https://github.com/ldez/prm/releases/download/v2.4.0/prm_v2.4.0_darwin_amd64.tar.gz"
  version "2.4.0"
  sha256 "762987e8a2e8e3a3f7421f944ca368c349e1525000ef7b40c10cebfa7b7bd8b4"

  def install
    bin.install "prm"
  end

  test do
    system "#{bin}/prm version"
  end
end
