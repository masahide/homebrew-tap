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
      url "https://github.com/masahide/assumer/releases/download/v1.0.1/darwin-arm64.tar.gz"
      sha256 "9a141a9bee9a07c21ba6efbbef89ed10dc28f22863b082c8ef700c0d366b3c5a"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download/v1.0.1/darwin-amd64.tar.gz"
      sha256 "043eadb25b752c698dcd67e1e87450c573c624d295666f9e7bbbe5653e6107f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/assumer/releases/download/v1.0.1/linux-arm64.tar.gz"
      sha256 "f4d424403658f6c9b094b293c3d51385cad60209f5d51d6a2e9f0f58cc9d2ce1"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download/v1.0.1/linux-amd64.tar.gz"
	  sha256 "22208aa72c0b2d0f72ea7ade4a60599c3829c6b7bb06f6c665504f968c3f5340"
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
