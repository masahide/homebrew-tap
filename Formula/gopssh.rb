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
      url "https://github.com/masahide/gopssh/releases/download/v1.0.4/darwin-arm64.tar.gz"
      sha256 "2fd3e80a53e5ad3508df3a26c3e9663545f3ef97105fc63d64e5c5ed440484ec"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.4/darwin-amd64.tar.gz"
      sha256 "3b3426a8f602bfa376c1c6a7fb57b8c3d760ef2a655a0b90a69deaca1e3bce08"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.4/linux-arm64.tar.gz"
      sha256 "8d4ed7e20c41157be5dbe88b982fe97680c27e94e98a149d5016a465d1125b0c"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.4/linux-amd64.tar.gz"
	  sha256 "e56425d74d41544c4433ea2f56ad0b7748d0975e6e3d34e20715d285bf194bac"
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
