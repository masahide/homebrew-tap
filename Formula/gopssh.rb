# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gopssh < Formula
  desc "AWS assume role credential wrapper"
  homepage "https://github.com/masahide/gopssh"
  license "MIT"
  version "1.0.0"
  on_macos do
    on_arm do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.1/darwin-arm64.tar.gz"
      sha256 "ca13d602edcd6e84611626514c29e7a97f6eac5a9b88ca88df9c503adf7a55ec"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.1/darwin-amd64.tar.gz"
      sha256 "d82fa09a941df9182ceb769164a5c3c57bd4c9ee663ebeaa2a8975c8b197ff1e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.1/linux-arm64.tar.gz"
      sha256 "6e3ce2cc177ae8d642c7c9b3a3d75ceb538944303fe59d6d43578993c2b447c4"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.1/linux-amd64.tar.gz"
	  sha256 "d274934c24b167c0d5d86f4790d66fe8414f2a8a7a647d561ed1a066ebeffe42"
    end
  end

  # depends_on "cmake" => :build

  def install
    system "chmod", "755", "gopssh"
    bin.install "gopssh"
  end

  test do
    system "#{bin}/gopssh -v"
  end
end
