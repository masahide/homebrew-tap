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
      sha256 "50d6a6e0e9c25f42c909fab270bd6971c912f73865aeab7f498566985e41a873"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.1/darwin-amd64.tar.gz"
      sha256 "0b491296dab18c20c58384cbaa53d83deba3e51a85c29ab97dc9df6d94b3e2b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.1/linux-arm64.tar.gz"
      sha256 "1007ab53e4f637043e330957f4b3eed3ff8c7522a71307f3889fc3f388bee1fb"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.1/linux-amd64.tar.gz"
	  sha256 "62c70fc28342a7ecdcd8390f1c989dbd11440f5d7d132d69c22f2e2bf2bd947b"
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
