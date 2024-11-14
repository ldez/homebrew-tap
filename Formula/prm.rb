# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Prm < Formula
  desc "Pull Request Manager for Maintainers"
  homepage "https://github.com/ldez/prm"
  version "3.6.0"

  on_macos do
    on_intel do
      url "https://github.com/ldez/prm/releases/download/v3.6.0/prm_v3.6.0_darwin_amd64.tar.gz"
      sha256 "afc182f3553cc413efbb6ed21bedee47b9cb60665d101269de64595cad0a3bb9"

      def install
        bin.install "prm"
      end
    end
    on_arm do
      url "https://github.com/ldez/prm/releases/download/v3.6.0/prm_v3.6.0_darwin_arm64.tar.gz"
      sha256 "7c15524fa0c15de643fa0094fe1ec3e57a3da2a89fbb2155f7b7f21afba26b0e"

      def install
        bin.install "prm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ldez/prm/releases/download/v3.6.0/prm_v3.6.0_linux_amd64.tar.gz"
        sha256 "1b914aa1e9e50934c05ce07331d1bcc98387b55c47f242b43645c6a1201a4518"

        def install
          bin.install "prm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ldez/prm/releases/download/v3.6.0/prm_v3.6.0_linux_arm64.tar.gz"
        sha256 "a5ca9998ef193bf0a3ca6040f49553e8440bedc894072292de1d5ffa616bbc67"

        def install
          bin.install "prm"
        end
      end
    end
  end

  test do
    system "#{bin}/prm version"
  end
end
