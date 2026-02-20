# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.17.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.17.0/tero_1.17.0_darwin_amd64.tar.gz"
      sha256 "01cb75ef9bc3d295b0ca5cd8b51303e4686ee5ddea3eaf38818d8c9ca87c2568"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.17.0/tero_1.17.0_darwin_arm64.tar.gz"
      sha256 "828017aba8f7846040a55eaca52aaf530e2a8427d3ae5d0e02884bfbee01a3dc"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.17.0/tero_1.17.0_linux_amd64.tar.gz"
      sha256 "d51d6f3db9fff772e0ed7e0ca320d80706f9441234178a0c567b08184622fe24"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.17.0/tero_1.17.0_linux_arm64.tar.gz"
      sha256 "854f056f4b5e65b5fc581ba5f25271c15f475c3b8cb0bf0a433eea290148632a"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
