# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.22.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.22.1/tero_1.22.1_darwin_amd64.tar.gz"
      sha256 "3ae1aff344bbfa7f1ac0532a9cbe330dc724b81fc99835e80e7b422cf1f9043c"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.22.1/tero_1.22.1_darwin_arm64.tar.gz"
      sha256 "857e762e998a4002fcfe54a53688cb14a76017b0f9283202e14498040049aff8"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.22.1/tero_1.22.1_linux_amd64.tar.gz"
      sha256 "be928012f2f574e0c3ff5987c2137a9fb5a6b37fe9fad2344d469e71914a4217"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.22.1/tero_1.22.1_linux_arm64.tar.gz"
      sha256 "f27d57a48fae27a5f153eb650deb19d7aa6c68c0b44b1424f59efb6b67c118ae"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
