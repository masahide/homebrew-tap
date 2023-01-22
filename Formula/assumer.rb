# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Assumer < Formula
  desc "AWS assume role credential wrapper"
  homepage "https://github.com/masahide/assumer"
  license "MIT"
  version "1.0.0"
  on_macos do
    on_arm do
      url "https://github.com/masahide/assumer/releases/download//darwin-arm64.tar.gz"
      sha256 "1603c5e56498cb60bc4c7b21f89eb5cfe06e5194fef800eb191f6ceaf14e5ee1"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download//darwin-amd64.tar.gz"
      sha256 "40779120db1aed4a84eaf5f87d4d1168721bb89e02931d5313a65da27fd45f4d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/assumer/releases/download//linux-arm64.tar.gz"
      sha256 "68aa326a83ae7e1871a0f50552e0448a481ac03b923b010261366f7bb8511edf"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download//linux-amd64.tar.gz"
	  sha256 "b5742344aef929ee6458c78828f4abffe5f86302b2ad3b9d64abba24606514b1"
    end
  end

  # depends_on "cmake" => :build

  def install
    system "chmod", "755", "assumer"
    bin.install "assumer"
  end

  test do
    system "#{bin}/assumer -v"
  end
end
