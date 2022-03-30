# This file was generated by GoReleaser. DO NOT EDIT.
class Deptomod < Formula
  desc "Enhanced migration from dep to go modules"
  homepage "https://github.com/ldez/deptomod"
  version "0.1.0"

  if OS.mac?
    url "https://github.com/ldez/deptomod/releases/download/v0.1.0/deptomod_v0.1.0_darwin_amd64.tar.gz"
    sha256 "336fe75e3ce8ea369798dc0afce2a7d42a8c64cf848a71eba00b229b037c392e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ldez/deptomod/releases/download/v0.1.0/deptomod_v0.1.0_linux_amd64.tar.gz"
      sha256 "28dde6eb6ae0ed03f4b3a118da1a48d73d6d491d3f7bc91b973a5174931fc69d"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ldez/deptomod/releases/download/v0.1.0/deptomod_v0.1.0_linux_arm64.tar.gz"
        sha256 "aa7b6ab4329f2971ca3a38766caac5ac953888cb510c744af83a693cb7d27adf"
      end
    end
  end

  def install
    bin.install "deptomod"
  end

  test do
    system "#{bin}/deptomod --version"
  end
end
