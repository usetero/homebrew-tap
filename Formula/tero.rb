# This file is auto-updated by GoReleaser. DO NOT EDIT.
class Tero < Formula
  desc "Improve your observability data quality from the terminal"
  homepage "https://usetero.com"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v0.1.0/tero_0.1.0_darwin_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/usetero/cli/releases/download/v0.1.0/tero_0.1.0_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usetero/cli/releases/download/v0.1.0/tero_0.1.0_linux_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/usetero/cli/releases/download/v0.1.0/tero_0.1.0_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "tero"
  end

  test do
    system "#{bin}/tero", "--version"
  end
end
