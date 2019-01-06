class Prm < Formula
  desc "Pull Request Manager for Maintainers"
  homepage "https://github.com/ldez/prm"
  url "https://github.com/ldez/prm/releases/download/v2.4.0/prm_v2.4.0_darwin_amd64.tar.gz"
  version "2.4.0"
  sha256 "b1201cf4c7ee351595eae2f669aed0fe0ad0e775bbb6fa8955a08c1cdfddf332"

  def install
    bin.install "prm"
  end

  test do
    system "#{bin}/prm version"
  end
end
