# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AssumerX8664 < Formula
  desc "AWS assume role credential wrapper"
  homepage "https://github.com/masahide/assumer"
  url "https://github.com/masahide/assumer/releases/download/v1.0.0/darwin-amd64.tar.gz"
  sha256 "f6da0af345c60c5d999c51a77eb6733d26a0ade385cd1b4540f5ca35267de1fd"
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
