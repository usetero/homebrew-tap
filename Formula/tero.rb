# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.11.0/tero_1.11.0_darwin_amd64.tar.gz"
      sha256 "725cc69f0f994c4911d22516e670f71477c4493994670dab74288da176c2ee4f"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.11.0/tero_1.11.0_darwin_arm64.tar.gz"
      sha256 "f0840515e1b54d573d0cd27af88d266e1c636dbe7ca37b206b64ab0ab4e7bc26"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.11.0/tero_1.11.0_linux_amd64.tar.gz"
      sha256 "b5399d201105f3941d78383d2d478fd0da69e835e2ef59cc72fdc24606b6d792"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.11.0/tero_1.11.0_linux_arm64.tar.gz"
      sha256 "0a996291ae3fd6d38fabb26322293a02fdb6c02c7be80d5256b55fcae7c78dcc"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
