# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.22.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.22.2/tero_1.22.2_darwin_amd64.tar.gz"
      sha256 "5155c21f5ad6f5664db08fd77d17f9a99a36879ab12674c34a486045e40fd33b"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.22.2/tero_1.22.2_darwin_arm64.tar.gz"
      sha256 "574165ac611a117dd9f91d1e8551846d035ffd90cc64bb872131e32200046716"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.22.2/tero_1.22.2_linux_amd64.tar.gz"
      sha256 "5d8ebbfc1fe4ba0a7aa08011d7895bf1cea0c3fa55207e5b4952546528ec5d96"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.22.2/tero_1.22.2_linux_arm64.tar.gz"
      sha256 "5ffd91c530744d088c641598d31b7cd63fce97684476ae325949b95ed952759e"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
