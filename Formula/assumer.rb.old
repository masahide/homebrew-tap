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
      sha256 "eac5588b942898da4688ab5f93e5a0c9b97c777b98a9067689dadd91bcc263e3"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download/v1.0.0/darwin-amd64.tar.gz"
      sha256 "f6da0af345c60c5d999c51a77eb6733d26a0ade385cd1b4540f5ca35267de1fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/assumer/releases/download/v1.0.0/linux-arm64.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
    on_intel do
      url "https://github.com/masahide/assumer/releases/download/v1.0.0/linux-amd64.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
