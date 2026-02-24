# typed: false
# frozen_string_literal: true

class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "1.19.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/usetero/cli/releases/download/v1.19.0/tero_1.19.0_darwin_amd64.tar.gz"
      sha256 "22c7a50768da2fa0be15f1c45a3f150cb6b9f3c187c147d4b9c44d338f6c8e28"

      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v1.19.0/tero_1.19.0_darwin_arm64.tar.gz"
      sha256 "c2314679bb51dd788bb1c4ae97de11a224de8db63d2a08c94919f49acaaeeaae"

      def install
        bin.install "tero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.19.0/tero_1.19.0_linux_amd64.tar.gz"
      sha256 "fe50a77522b0500819aede195f31ffa24da7afcfc879b9f2a70dd09fd7b88680"
      def install
        bin.install "tero"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/usetero/cli/releases/download/v1.19.0/tero_1.19.0_linux_arm64.tar.gz"
      sha256 "750eea1477a9d67c4115aac6ea90092a7bed250640bfca5186c121cf0bb3d519"
      def install
        bin.install "tero"
      end
    end
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
