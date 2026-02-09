# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.10.0/tero_1.10.0_darwin_amd64.tar.gz"
      sha256 "de4c7480e31759367be1a7eea846632f29571b8e6afaa1452232e83ed7ba8cde"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.10.0/tero_1.10.0_darwin_arm64.tar.gz"
      sha256 "6ff1c1ef4791e33ea181eabd654fa131a85b2f9fdc737124fde9de54eabb38d7"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.10.0/tero_1.10.0_linux_amd64.tar.gz"
      sha256 "832c97d90d6cabb314ec49fab3f86f5fe5cf99daa1751111210d54faf306a2d7"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.10.0/tero_1.10.0_linux_arm64.tar.gz"
      sha256 "2eae90c4fa64efd6287af8ee8514fc77a0cc376da4c9ca426013bedcccf70742"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
