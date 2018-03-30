class Bitb < Formula
  desc "Bitbucket CLI"
  homepage "https://github.com/irreverent-pixel-feats/bitbucket"
  url "https://dl.bintray.com/irreverent-pixel-feats/brew/bottles/bitb-0.0.1-20180330165914-9b08d17.bottle.tar.gz"
  version "0.0.1-20180330165914-9b08d17"
  sha256 "87e2b634f941c07b18dfb3829eecbed9c08027ed91cd0a0335a51932a7770b2e"

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
