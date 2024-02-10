class GitCoauthor < Formula
  desc "List or add Git coauthors"
  homepage "https://github.com/nicholasdower/git-coauthor"
  url "https://github.com/nicholasdower/git-coauthor/releases/download/v1.0.0/release.tar.gz"
  sha256 "24811c85ac4a4db5fe1f71e7d36ff51fe16c08f8e60f7835ea0838ea7cdd14ad"
  license "MIT"

  def install
    bin.install "bin/git-coauthor"
    man1.install "man/git-coauthor.1"
  end

  test do
    assert_match "git-coauthor", shell_output("#{bin}/git-coauthor --version")
  end

  def caveats
    <<~EOS
      To add the coauthor Git alias:

        git config --global alias.coauthor '!git-coauthor'
    EOS
  end
end
