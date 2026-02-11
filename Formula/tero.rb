# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.12.0/tero_1.12.0_darwin_amd64.tar.gz"
      sha256 "073edd276b906d5698e7e66e4397a59635b5b9c7bbebafcdf78f2ca8e4a4550b"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.12.0/tero_1.12.0_darwin_arm64.tar.gz"
      sha256 "8fee9ecf41f1ef23620e212c04c081661d0bddb451faf999253f9a03bd81b45b"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.12.0/tero_1.12.0_linux_amd64.tar.gz"
      sha256 "296941032a452d7b3c32ab742be03febcff2e3b3eaa7e9222bc37a4bea224437"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.12.0/tero_1.12.0_linux_arm64.tar.gz"
      sha256 "6c5fcd62137704cfd6d76ebad2456d96134383c317a539c6947fb03b0d4c10b8"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
