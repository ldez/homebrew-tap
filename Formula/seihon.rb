# This file was generated by GoReleaser. DO NOT EDIT.
class Seihon < Formula
  desc "A simple tool to publish multi-arch images on the Docker Hub."
  homepage "https://github.com/ldez/seihon"
  version "0.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ldez/seihon/releases/download/v0.5.0/seihon_v0.5.0_darwin_amd64.tar.gz"
    sha256 "28a9406e004ce04ee6a79c9d2b629ba4d87f579a4f50d84076c38f5bf08574a2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ldez/seihon/releases/download/v0.5.0/seihon_v0.5.0_linux_amd64.tar.gz"
      sha256 "c9bad374f705cd6fc32c9a83d90a9fae78a768043874ad465d1916b3be9fa683"
    end
  end

  def install
    bin.install "seihon"
  end

  test do
    system "#{bin}/seihon version"
  end
end
