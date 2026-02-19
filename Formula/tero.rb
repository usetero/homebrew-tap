# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.16.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.16.0/tero_1.16.0_darwin_amd64.tar.gz"
      sha256 "875170f02a66399d2cc8570ae567f6c12d01d0b46444cbb94fab2b241731e0b6"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.16.0/tero_1.16.0_darwin_arm64.tar.gz"
      sha256 "b78c9dc695df9cb0d76b6d54edc211a5f0fe7f608179d844011a175d77a26bb0"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.16.0/tero_1.16.0_linux_amd64.tar.gz"
      sha256 "072bc390ae720d295982e8f50ef737c3f20f5dddb88e59033ca16b229511f813"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.16.0/tero_1.16.0_linux_arm64.tar.gz"
      sha256 "2b9e82cc50d3c9b50fdbdc2b570b705cafec71c20ecb2987e9e48c9b6f568847"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
