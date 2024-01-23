class GitCoauthor < Formula
  desc 'CLI used to manage Git coauthors'
  homepage 'https://github.com/nicholasdower/git-coauthor'
  url 'https://github.com/nicholasdower/git-coauthor/archive/v3.tar.gz'
  sha256 '50c89bbe954b716a1420c2bd7075dd9d2ef8871b708887099a4ec80fe0c1d09b'
  license 'MIT'

  def install
    lib.install Dir['lib/*']
    bin.install 'bin/git-coauthor'
  end

  test do
    assert_match "Manages Git coauthors", shell_output("#{bin}/git-coauthor --version")
  end
end
