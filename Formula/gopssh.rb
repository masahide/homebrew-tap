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
      url "https://github.com/masahide/gopssh/releases/download/v1.0.5/darwin-arm64.tar.gz"
      sha256 "bcf3a55c77ebde8f9e757e6c0f86c76ecdff040420e8e8db53d5e06c4acfd0fd"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.5/darwin-amd64.tar.gz"
      sha256 "b1718b774226d301511810736fd5baa7e2b21e0b9c4d165df8d7e675eab91d0a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.5/linux-arm64.tar.gz"
      sha256 "c5f84ad955706664fa79881b0d6996329c0a0766db30bf097e2fdea2ae2f9b42"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.5/linux-amd64.tar.gz"
	  sha256 "72ca552c2d64dc311e4ec58a4f47b5c13e7e1b692e6ee070197877727a359f50"
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
