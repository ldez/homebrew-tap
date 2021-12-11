# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Seihon < Formula
  desc "Simple tool to publish multi-arch images on the Docker Hub"
  homepage "https://github.com/ldez/seihon"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ldez/seihon/releases/download/v0.9.0/seihon_v0.9.0_darwin_amd64.tar.gz"
      sha256 "aa44b39fcd885242c1ce91420d51ec90203a6948de5ede01cf8a9b5bfd165f72"

      def install
        bin.install "seihon"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ldez/seihon/releases/download/v0.9.0/seihon_v0.9.0_darwin_arm64.tar.gz"
      sha256 "231ef1f5d69706b3caf99a041909a240395f3355886eb80992bee18158db8cb7"

      def install
        bin.install "seihon"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ldez/seihon/releases/download/v0.9.0/seihon_v0.9.0_linux_arm64.tar.gz"
      sha256 "981c7f720c7c7818054a68500dbfee54c81d63b53bae8d7a9f0d3995f2ebcd59"

      def install
        bin.install "seihon"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ldez/seihon/releases/download/v0.9.0/seihon_v0.9.0_linux_amd64.tar.gz"
      sha256 "f9af92cb30d9b2a99f1515953a4cc692d41d9d6030a9a67c72df14b754e25d2a"

      def install
        bin.install "seihon"
      end
    end
  end

  test do
    system "#{bin}/seihon version"
  end
end
