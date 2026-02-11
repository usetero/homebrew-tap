# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.14.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.14.0/tero_1.14.0_darwin_amd64.tar.gz"
      sha256 "872e1f7adbd721edd344abadd8d4a2ea47311e82b02cd6c7ff3d14f883a60263"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.14.0/tero_1.14.0_darwin_arm64.tar.gz"
      sha256 "6efdb7a7ade4a02cf2d35eb5e3e8dac18e4bae5b31a420adea4f98be4a724044"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.14.0/tero_1.14.0_linux_amd64.tar.gz"
      sha256 "dff4bddeb91e38010beba3366b792706d91b1b7c8863d53eab64cfbee5dd3336"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.14.0/tero_1.14.0_linux_arm64.tar.gz"
      sha256 "a5cfde29ca1beae405b651759c1dde97f7945cf25d9d31286c1070a1633f1903"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
