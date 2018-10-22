class Emmet < Formula
  desc "A Uniform CI Interface"
  homepage "https://github.com/irreverent-pixel-feats/emmet"
  url "https://dl.bintray.com/irreverent-pixel-feats/brew/bottles/emmet-0.0.1-20181022224701-ea4480f.bottle.tar.gz"
  version "0.0.1-20181022224701-ea4480f"
  sha256 "5d29da53ae7f906db29db122d807827ee9637fd07acda67b1f1131e692d4b3f5"

  def install
    bin.install "bin/emmet"
    bash_completion.install "_completions/bash/emmet"
    zsh_completion.install "_completions/zsh/_emmet"
    fish_completion.install "_completions/fish/emmet.fish"
  end

  def test
    system "#{bin}/emmet", "--version"
  end
end
