# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.22.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.22.0/tero_1.22.0_darwin_amd64.tar.gz"
      sha256 "3dd6feb3df1bf7bf257eb1d90a8bfeceea408bd352192b869dee22170f27eae6"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.22.0/tero_1.22.0_darwin_arm64.tar.gz"
      sha256 "87c3acec03147b92fa0f1f43add3079045c9bb791c86809a3f529c38535e6c70"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.22.0/tero_1.22.0_linux_amd64.tar.gz"
      sha256 "b07e70da89dfc15fab0f8297408b120d74d021ab2a2ddbd543b42bcb6ff08211"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.22.0/tero_1.22.0_linux_arm64.tar.gz"
      sha256 "c7850ea95e03386158271873a833b861459de65666a90f03f53e17cae11c810f"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
