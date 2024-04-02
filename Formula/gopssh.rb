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
      url "https://github.com/masahide/gopssh/releases/download/v1.0.2/darwin-arm64.tar.gz"
      sha256 "d890ad7b033d505b9013bc28c9258ce2ace22f465dbc28d7baf78a713afdf1c5"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.2/darwin-amd64.tar.gz"
      sha256 "0e6c74ac5410dff1ed27ba16826eb3a3269118c151e1596307019c37c954e5b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.2/linux-arm64.tar.gz"
      sha256 "f776c3838469e3c00957ad470ad1abb8942b48267a4a2a824195f6a0c01125b8"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.2/linux-amd64.tar.gz"
	  sha256 "cd6a367627615dadd3b09cd69a8e32b5e0236e7387eeefbd1fa6fb3e3f4df955"
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
