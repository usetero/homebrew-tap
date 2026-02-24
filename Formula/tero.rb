# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.18.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.18.0/tero_1.18.0_darwin_amd64.tar.gz"
      sha256 "27ae54d295dce06fefdc0d44f5aa39ea2fbf6f3b01e628d5e743d6a65deef039"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.18.0/tero_1.18.0_darwin_arm64.tar.gz"
      sha256 "22db37418889394234436d78c93c585dbc696a125e5d68dc440f82b4a43c6a04"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.18.0/tero_1.18.0_linux_amd64.tar.gz"
      sha256 "6936681418495327e73bdae8c73d86611b460ce802dccac761cd0329bec28d35"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.18.0/tero_1.18.0_linux_arm64.tar.gz"
      sha256 "0f0d6ec3974a0db9c7a44f71770616935ae6f51b274ce7416fdc7d02aeb566e1"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
