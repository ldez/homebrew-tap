# This file was generated by GoReleaser. DO NOT EDIT.
class Seihon < Formula
  desc "A simple tool to publish multi-arch images on the Docker Hub."
  homepage "https://github.com/ldez/seihon"
  url "https://github.com/ldez/seihon/releases/download/v0.4.2/seihon_v0.4.2_darwin_amd64.tar.gz"
  version "0.4.2"
  sha256 "7b25a6518b19b90447db27296e2602e4c2fe2c110e7603c08f937f5ad52f3575"

  def install
    bin.install "seihon"
  end

  test do
    system "#{bin}/seihon version"
  end
end
