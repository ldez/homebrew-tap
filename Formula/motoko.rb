# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Motoko < Formula
  desc "Based on Go modules, update a dependency to a major version"
  homepage "https://github.com/ldez/motoko"
  version "0.2.4"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ldez/motoko/releases/download/v0.2.4/motoko_v0.2.4_darwin_amd64.tar.gz"
    sha256 "2d42817112e0420134f2ad15a4160c923700c69fbff52a56d7ac54993dc02421"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ldez/motoko/releases/download/v0.2.4/motoko_v0.2.4_darwin_arm64.tar.gz"
    sha256 "076ffaab1ba1345805053b67351b869ad56f821c443cb6c9901c94c7d715ea97"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ldez/motoko/releases/download/v0.2.4/motoko_v0.2.4_linux_amd64.tar.gz"
    sha256 "7507f79e80a5a993cbb151e2732976fa7aaf8f09d43680fce417371f8a3e3f3a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/ldez/motoko/releases/download/v0.2.4/motoko_v0.2.4_linux_armv6.tar.gz"
    sha256 "a07542bc7fb8c97a5859c5b7216b1ba3d07bba8dee78cd20a0c1d525ff8b3e0d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ldez/motoko/releases/download/v0.2.4/motoko_v0.2.4_linux_arm64.tar.gz"
    sha256 "51e002da4e85506a2f3bdd8ba25aa476dcebd3a75164145a0f99bec1c9702dcc"
  end

  def install
    bin.install "motoko"
  end

  test do
    system "#{bin}/motoko version"
  end
end
