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
      url "https://github.com/masahide/gopssh/releases/download/v1.0.3/darwin-arm64.tar.gz"
      sha256 "2238d6fb3144478e1fbfefa8c2db357020db593eeb77f0dfeaebb47d8365a507"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.3/darwin-amd64.tar.gz"
      sha256 "e546b8840119052adbc5bc1b5bf51d04c631aabb9ab593ba983ab49187bc1d3b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.3/linux-arm64.tar.gz"
      sha256 "7bcd7f056647c81626ff97273a20fab7b315855f26f062b13667fe6248091c15"
    end
    on_intel do
      url "https://github.com/masahide/gopssh/releases/download/v1.0.3/linux-amd64.tar.gz"
	  sha256 "4c4c05effe044063112152d37f6f2096200c50e46f0f3daa26022b1b982c20e3"
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
