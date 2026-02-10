# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.11.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.11.1/tero_1.11.1_darwin_amd64.tar.gz"
      sha256 "4af41b70bb517add7d17aae967e37602aa76c5ac92a6fdcec4f73223d1e55b0c"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.11.1/tero_1.11.1_darwin_arm64.tar.gz"
      sha256 "94f93b5fdf375359851dd2c3b8cc0304fffc97e41d39db33f1d3a590599b428d"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.11.1/tero_1.11.1_linux_amd64.tar.gz"
      sha256 "c7eb3cdaac5c2eca7638cc808631643a5d2fc3f57f297b1d650a813b27647c22"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.11.1/tero_1.11.1_linux_arm64.tar.gz"
      sha256 "589046adda52be9dcdc2693811cddee21de9d1da2a2794f1222c13c0766a41b5"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
