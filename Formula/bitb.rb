class Bitb < Formula
  desc "Bitbucket CLI"
  homepage "https://github.com/irreverent-pixel-feats/bitbucket"
  url "https://dl.bintray.com/irreverent-pixel-feats/brew/bottles/bitb-0.0.1-20180330162209-a70044e.bottle.tar.gz"
  version "0.0.1-20180330162209-a70044e"
  sha256 "00e4f1e87e6b5fad3b5d11b0b2bc18bfa7306b3a3f00fc1e117cdb9ac0b1c656"

  def install
    bin.install "bin/bitb"
    bash_completion.install "_completions/bitb.bash"
    zsh_completion.install "_completions/zsh/_bitb"
    fish_completion.install "_completions/bitb.fish"
  end

  def test
    system "#{bin}/bitb", "--version"
  end
end
