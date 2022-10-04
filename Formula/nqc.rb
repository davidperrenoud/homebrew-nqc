class Nqc < Formula
  desc "Programming language for LEGO MINDSTORMS RCX, CyberMaster and Scout"
  homepage "https://bricxcc.sourceforge.net/nqc/"
  url "https://github.com/jverne/nqc/archive/refs/tags/v3.2r1.tar.gz"
  version "3.2r1"
  sha256 "057ca37e92d4eb7b0418e4c503ed9df2e1d057dc30e9426ce3072ee6eb75271a"
  license "MPL-2.0"

  bottle do
    root_url "https://github.com/davidperrenoud/homebrew-nqc/releases/download/nqc-3.2r1"
    sha256 cellar: :any_skip_relocation, monterey: "d705c6381ec6bd746b9383f7a6a8335d0029a1c0c6ebe51d3aaf9a7d4cbb9ee4"
  end

  depends_on :macos

  def install
    ENV.deparallelize
    system "make", "install", "PREFIX=#{prefix}", "MANDIR=#{man}/man1"
  end

  test do
    system "#{bin}/nqc", "-help"
  end
end
