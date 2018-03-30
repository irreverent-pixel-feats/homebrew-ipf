class Bitb < Formula
  desc "Bitbucket CLI"
  homepage "https://github.com/irreverent-pixel-feats/bitbucket"
  url "https://dl.bintray.com/irreverent-pixel-feats/brew/bottles/bitb-0.0.1-20180330155346-c526900.bottle.tar.gz"
  version "0.0.1-20180330155346-c526900"
  sha256 "6c2e3ccb8fc613c6b5cf84ae34370be4cdb0342007631c749eaaac977dcbd83c"

  def install
    bin.install "bin/bitb"
    prefix.install Dir["_completions"]
  end

  def test
    system "#{bin}/bitb", "--version"
  end
end
