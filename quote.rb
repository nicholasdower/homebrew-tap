class Quote < Formula
  desc "Quote lines"
  homepage "https://github.com/nicholasdower/quote"
  url "https://github.com/nicholasdower/quote/releases/download/v1.0.0/release.tar.gz"
  sha256 "57d5ea39c8138dbe2d12c7fdf3947d680750b180aa6d677bc925c5c7ede95aba"
  license "MIT"

  def install
    bin.install "bin/quote"
    man1.install "man/quote.1"
  end

  test do
    assert_match "quote", shell_output("#{bin}/quote --version")
  end
end
