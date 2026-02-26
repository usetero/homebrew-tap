# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.22.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.22.3/tero_1.22.3_darwin_amd64.tar.gz"
      sha256 "01d5f7b53a9cf2c82e69d253a357a5d1d793eb6a647a450139511977896b12c7"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.22.3/tero_1.22.3_darwin_arm64.tar.gz"
      sha256 "fb4d3d78e682ee97acd7053d45447b5e06462a42680b5c47f220a3719e4a45af"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.22.3/tero_1.22.3_linux_amd64.tar.gz"
      sha256 "e6110870e86b59aeea17144d5ffd68a7c15b95c1c5572b37ce22384645d4c991"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.22.3/tero_1.22.3_linux_arm64.tar.gz"
      sha256 "fd994f7c80fbd1a064a413ca644eda6bb1ce40573efdf51e3ff140b2966da86f"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
