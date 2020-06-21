# This file was generated by GoReleaser. DO NOT EDIT.
class Prm < Formula
  desc "Pull Request Manager for Maintainers"
  homepage "https://github.com/ldez/prm"
  version "3.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ldez/prm/releases/download/v3.4.0/prm_v3.4.0_darwin_amd64.tar.gz"
    sha256 "1214f8da1d6b24aec12ee8ee9f619161e25b664d838f08450b6895730dc20c70"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ldez/prm/releases/download/v3.4.0/prm_v3.4.0_linux_amd64.tar.gz"
      sha256 "ec3cc513bd7a8d22a6518392bf00e90289981a63500f3a36240749a95dfb7e74"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ldez/prm/releases/download/v3.4.0/prm_v3.4.0_linux_arm64.tar.gz"
        sha256 "a0dff619632331107c6ad6621f1989092a38a546aad85ed7ed926c75d56e3440"
      else
      end
    end
  end

  def install
    bin.install "prm"
  end

  test do
    system "#{bin}/prm version"
  end
end
