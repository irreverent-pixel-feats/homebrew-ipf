class Ipf < Formula
  desc "IPF Workflows codified in a CLI tool"
  homepage "https://github.com/irreverent-pixel-feats/ipf"
  url "https://dl.bintray.com/irreverent-pixel-feats/brew/bottles/ipf-0.0.1-20181112215259-5a331ac.bottle.tar.gz"
  version "0.0.1-20181112215259-5a331ac"
  sha256 "e634a0d66c0310bb56f2608935c48f69e3259c886e00efe3f6e4003889d98303"

  def install
    bin.install "bin/ipf"
    bash_completion.install "_completions/bash/ipf"
    zsh_completion.install "_completions/zsh/_ipf"
    fish_completion.install "_completions/fish/ipf.fish"
  end

  def test
    system "#{bin}/ipf", "--version"
  end
end
