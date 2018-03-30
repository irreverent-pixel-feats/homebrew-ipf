class Bitb < Formula
  desc "Bitbucket CLI"
  homepage "https://github.com/irreverent-pixel-feats/bitbucket"
  url "https://dl.bintray.com/irreverent-pixel-feats/brew/bottles/bitb-0.0.1-20180330174653-8bb84dd.bottle.tar.gz"
  version "0.0.1-20180330174653-8bb84dd"
  sha256 "f0c781aaeaa676453ae3c2928e8ff7a6b65ab40d592993e3c2c0f8e50c24c563"

  def install
    bin.install "bin/bitb"
    bash_completion.install "_completions/bash/bitb"
    zsh_completion.install "_completions/zsh/_bitb"
    fish_completion.install "_completions/fish/bitb.fish"
  end

  def test
    system "#{bin}/bitb", "--version"
  end
end
