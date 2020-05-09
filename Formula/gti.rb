# This file was generated by GoReleaser. DO NOT EDIT.
class Gti < Formula
  desc "Just a silly git launcher, basically. Inspired by sl"
  homepage "https://github.com/ldez/gti"
  version "1.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ldez/gti/releases/download/v1.5.0/gti_v1.5.0_darwin_amd64.tar.gz"
    sha256 "7a729081d641ada1c2d00b5e642040b283f574d222dc3fdf4b97fc457016fd1a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ldez/gti/releases/download/v1.5.0/gti_v1.5.0_linux_amd64.tar.gz"
      sha256 "cc2cdad3713ff6efa1504d53036a60d7f7ded82813d877278259c844a594c433"
    end
  end

  def install
    bin.install "gti"
  end

  test do
    system "echo 0"
  end
end
