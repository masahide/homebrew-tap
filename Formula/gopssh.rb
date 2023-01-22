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
      url "https://github.com/masahide/gopssh/releases/download/v1.0.0/darwin-arm64.tar.gz"
      sha256 "0b3550ec28640e30ae29e745a48ce15d206056d10a25eebaa591e6a1af9da91a"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.0/darwin-amd64.tar.gz"
      sha256 "f91ecf6b6930201a4627d52ed9366a8fd2d86a033dba616424339b720340a810"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.0/linux-arm64.tar.gz"
      sha256 "711431fd75820145369df9860ae6ef710a257a5c43bf222779a9cc4b2a9eda15"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.0/linux-amd64.tar.gz"
	  sha256 "504ebd5197b84059701b846ab2b6034042de48f2ba3945f25a5b6daef2750e07"
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
