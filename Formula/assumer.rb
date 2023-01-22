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
      sha256 "927ab3890677ab156bd981e561c1c247359e386b8ccdd371eb8c9f0f9a4e9441"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download/1.0.0/darwin-amd64.tar.gz"
      sha256 "b37d514334d471e6af411549090c0a7937a2cc2d330784f0392c8a57d0cf22a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/assumer/releases/download/1.0.0/linux-arm64.tar.gz"
      sha256 "ddcfbcdb1a390b1f3eb0290101a2711d0d35d72840dbcba16eda94abebfb4aed"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download/1.0.0/linux-amd64.tar.gz"
	  sha256 "6d1ad6d77e4ec99b4652f78c44ee5ae1d42a06af976b6d65a19663c5435815ff"
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
