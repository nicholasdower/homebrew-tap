class GitCoauthor < Formula
  desc "List or add Git coauthors"
  homepage "https://github.com/nicholasdower/git-coauthor"
  license "MIT"
  version "5.1.0"
  if Hardware::CPU.arm?
    url "https://github.com/nicholasdower/git-coauthor/releases/download/v5.1.0/git-coauthor-5.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "5af796a69c427eb58adc35967017c02d44ce79016c6655c7438d80870e69f5f1"
  elsif Hardware::CPU.intel?
    url "https://github.com/nicholasdower/git-coauthor/releases/download/v5.1.0/git-coauthor-5.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "5af796a69c427eb58adc35967017c02d44ce79016c6655c7438d80870e69f5f1"
  end

  def install
    bin.install "bin/git-coauthor"
    man1.install "man/git-coauthor.1"
  end

  test do
    assert_match "git-coauthor", shell_output("#{bin}/git-coauthor --version")
  end
end
