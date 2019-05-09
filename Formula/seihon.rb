# This file was generated by GoReleaser. DO NOT EDIT.
class Seihon < Formula
  desc "A simple tool to publish multi-arch images on the Docker Hub."
  homepage "https://github.com/ldez/seihon"
  url "https://github.com/ldez/seihon/releases/download/v0.4.1/seihon_v0.4.1_darwin_amd64.tar.gz"
  version "0.4.1"
  sha256 "d39797146ee243bed94164896b3cfff3684d6b590a676a09b954a31d4aae4186"

  def install
    bin.install "seihon"
  end

  test do
    system "#{bin}/seihon version"
  end
end
