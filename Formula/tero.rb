# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.13.0/tero_1.13.0_darwin_amd64.tar.gz"
      sha256 "51699c90dc6b4938298e89ca42c60f54ac12b85c9b797486879626bb41fdd204"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.13.0/tero_1.13.0_darwin_arm64.tar.gz"
      sha256 "1d3eb6e512bb6ba7ebed83a6fafffc917422284a3367ae7389e25cdb83e7fe95"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.13.0/tero_1.13.0_linux_amd64.tar.gz"
      sha256 "18232fba311a6b22119964716bd3a2f2155834402fce648c51d2938fca19f497"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.13.0/tero_1.13.0_linux_arm64.tar.gz"
      sha256 "7e863b5e9bace7e372372b8b16e11b3ddb508e2d92b82b3ae676699af25addc5"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
