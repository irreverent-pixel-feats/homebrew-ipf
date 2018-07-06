class Bitb < Formula
  desc "Bitbucket CLI"
  homepage "https://github.com/irreverent-pixel-feats/bitbucket"
  url "https://dl.bintray.com/irreverent-pixel-feats/brew/bottles/bitb-0.0.1-20180706183001-e72f79d.bottle.tar.gz"
  version "0.0.1-20180706183001-e72f79d"
  sha256 "7b433df150a615023a604e8bc042a4ed0fce65c038d2d3a77bdc734e95960ecd"

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
