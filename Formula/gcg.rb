# This file was generated by GoReleaser. DO NOT EDIT.
class Gcg < Formula
  desc "GitHub Changelog Generator"
  homepage "https://github.com/ldez/gcg"
  version "1.7.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ldez/gcg/releases/download/v1.7.3/gcg_v1.7.3_darwin_amd64.tar.gz"
    sha256 "6d0bc0586f298df0a70adeaf96a436d896351dc477828ee61ce4fe2ff392ca4e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ldez/gcg/releases/download/v1.7.3/gcg_v1.7.3_linux_amd64.tar.gz"
      sha256 "1dd27857204dbe7e77a83f3d1b33dc8daee5377ab273c8bd78db3cc2892a3258"
    end
  end

  def install
    bin.install "gcg"
  end

  test do
    system "#{bin}/gcg version"
  end
end
