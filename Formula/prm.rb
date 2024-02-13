# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Prm < Formula
  desc "Pull Request Manager for Maintainers"
  homepage "https://github.com/ldez/prm"
  version "3.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ldez/prm/releases/download/v3.5.1/prm_v3.5.1_darwin_amd64.tar.gz"
      sha256 "e5e5864fac422d391e9266d9b4fdba857645346a06c2176c90bdb9a3d05eb47b"

      def install
        bin.install "prm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ldez/prm/releases/download/v3.5.1/prm_v3.5.1_darwin_arm64.tar.gz"
      sha256 "d915b1e2938ee8796a7209726c2681a5a202d8ff4c6cca2eb150107c4bbcf41a"

      def install
        bin.install "prm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ldez/prm/releases/download/v3.5.1/prm_v3.5.1_linux_amd64.tar.gz"
      sha256 "e724293bb1eef41605503f65fd64fb188a17702623e5a94d21983a251e8a0c51"

      def install
        bin.install "prm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ldez/prm/releases/download/v3.5.1/prm_v3.5.1_linux_arm64.tar.gz"
      sha256 "0cae415a3ccefe6f492f7ab54c8aecfd8b0771a0837b106e18134a3344a53dd3"

      def install
        bin.install "prm"
      end
    end
  end

  test do
    system "#{bin}/prm version"
  end
end
