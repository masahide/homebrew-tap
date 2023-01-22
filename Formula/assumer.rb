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
      url "https://github.com/masahide/assumer/releases/download/v1.0.0/darwin-arm64.tar.gz"
      sha256 "6370306ac91582c7e8b8af752a58f62b662981fcc5aef8f672923ce3253fe8b3"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download/v1.0.0/darwin-amd64.tar.gz"
      sha256 "2a6c29767bf52c38bfb60ba2a34115d1643ac6fb90fc831e30b823111b34453f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/assumer/releases/download/v1.0.0/linux-arm64.tar.gz"
      sha256 "d906726d9f6378cbbe8c04b95e1c54a022b5f6ded2ad59eb477ce5fc9fdb5338"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download/v1.0.0/linux-amd64.tar.gz"
	  sha256 "9e13f5928b9ddcb5757eb8992db20fec9cfaec94d7f70f34a1c4c9390715e624"
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
