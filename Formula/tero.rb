# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.21.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.21.0/tero_1.21.0_darwin_amd64.tar.gz"
      sha256 "b3d29167715d835b870220d698358e81b4eed68235055e850c276c50ff45b1d4"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.21.0/tero_1.21.0_darwin_arm64.tar.gz"
      sha256 "a1f48a6a6860ea605bc94d75f05c4f2471ec383f50276a37fadaf3623b2f2246"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.21.0/tero_1.21.0_linux_amd64.tar.gz"
      sha256 "925a07fd0fea8d1642d62b6675456ae438dd3bff911e0fe21fe354b2fee275b1"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.21.0/tero_1.21.0_linux_arm64.tar.gz"
      sha256 "e2b6035ac6537b0b3aeb1359e8ed158da4252b12baf5762d6fc67446a30d4b0b"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
