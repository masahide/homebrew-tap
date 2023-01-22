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
      url "https://github.com/masahide/assumer/releases/download/1.0.0/darwin-arm64.tar.gz"
      sha256 "faf3f49bd333278dd0416fa6d6b377c3f40314ad4d49c203eae826c7a0ee48b3"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download/1.0.0/darwin-amd64.tar.gz"
      sha256 "da44bc497c120a112de9971563692a1c535d7a9392e718ee6d6a03a3ead89fd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/assumer/releases/download/1.0.0/linux-arm64.tar.gz"
      sha256 "0552b977578fff2949b9c5012e4ce185cb24b812d0c51a9414886fb1f23e906f"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download/1.0.0/linux-amd64.tar.gz"
	  sha256 "7dd74714c9dc414098d0de4a03deb0dd47d1aa81ac3715ca5bedbfe2c58ec456"
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
