# This file was generated by GoReleaser. DO NOT EDIT.
class Motoko < Formula
  desc "Based on Go modules, update a dependency to a major version"
  homepage "https://github.com/ldez/motoko"
  version "0.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ldez/motoko/releases/download/v0.2.1/motoko_v0.2.1_darwin_amd64.tar.gz"
    sha256 "644c7bdb74d6b7b543fe4c7b935faad415dd15de6e4b62aa1f8193f483f5cb6f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ldez/motoko/releases/download/v0.2.1/motoko_v0.2.1_linux_amd64.tar.gz"
      sha256 "b910d41eac5164ea97ea58538ddee852895a3f5d2877ffdfce3db1e78a7c3be6"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ldez/motoko/releases/download/v0.2.1/motoko_v0.2.1_linux_arm64.tar.gz"
        sha256 "a732e416fc63373438df125e7e3184616ec6506c42269316772440cb65d87cd7"
      else
        url "https://github.com/ldez/motoko/releases/download/v0.2.1/motoko_v0.2.1_linux_armv6.tar.gz"
        sha256 "f5bb14d0d6ecceea83ab26e3dea69e51e9edd1b2c6234d0b254a100c0e304a60"
      end
    end
  end

  def install
    bin.install "motoko"
  end

  test do
    system "#{bin}/motoko version"
  end
end
