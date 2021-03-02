# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Seihon < Formula
  desc "Simple tool to publish multi-arch images on the Docker Hub"
  homepage "https://github.com/ldez/seihon"
  version "0.8.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ldez/seihon/releases/download/v0.8.2/seihon_v0.8.2_darwin_amd64.tar.gz"
    sha256 "cf2c3e14dd21c17bd7843718d1765413110e53f8c9478a29e4a452d7336182ff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ldez/seihon/releases/download/v0.8.2/seihon_v0.8.2_linux_amd64.tar.gz"
    sha256 "bcf75635c15e037067c2501487abfcc6b30cf089d0fbdd6c6a3745ab1d62ade9"
  end

  def install
    bin.install "seihon"
  end

  test do
    system "#{bin}/seihon version"
  end
end
