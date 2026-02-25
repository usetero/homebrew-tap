# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.20.0/tero_1.20.0_darwin_amd64.tar.gz"
      sha256 "03f909742f22c06795bdeeb51e4bf909ac514f6a4adaf7c3e81613844f25f8b1"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.20.0/tero_1.20.0_darwin_arm64.tar.gz"
      sha256 "2a09f9be5ca8c393a64e2378fbd1a41608e62ee23cf6a576a63fed7274147ba6"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.20.0/tero_1.20.0_linux_amd64.tar.gz"
      sha256 "1959d99a4a2eb5d3baeabf6696d5d0f205cdecafeafc1f72ed2a97dd6888ceb6"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.20.0/tero_1.20.0_linux_arm64.tar.gz"
      sha256 "3a95a098cab54cb12952bd1473d2202993f10fd4112289a37fac209e10179aee"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
