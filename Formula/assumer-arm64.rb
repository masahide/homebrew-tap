# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AssumerArm64 < Formula
  desc "AWS assume role credential wrapper"
  homepage "https://github.com/masahide/assumer"
  url "https://github.com/masahide/assumer/releases/download/v1.0.0/darwin-arm64.tar.gz"
  sha256 "eac5588b942898da4688ab5f93e5a0c9b97c777b98a9067689dadd91bcc263e3"
  license ""

  # depends_on "cmake" => :build

  def install
    system "chmod", "755", "assumer"
    bin.install "assumer"
  end

  test do
    system "#{bin}/assumer -v"
  end
end
