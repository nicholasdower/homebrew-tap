class Quote < Formula
  desc "Quote lines"
  homepage "https://github.com/nicholasdower/quote"
  license "MIT"
  version "1.1.0"
  if Hardware::CPU.arm?
    url "https://github.com/nicholasdower/quote/releases/download/v1.1.0/quote-1.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "5b5b97b1293a3af2e10cdf85014e902e7cbd913180f75f9465653550c1f1296f"
  elsif Hardware::CPU.intel?
    url "https://github.com/nicholasdower/quote/releases/download/v1.1.0/quote-1.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "db36872a02452c01ad23efad42ea61c4363a765fcf6b2edd79a76b3f58375bb0"
  end

  def install
    bin.install "bin/quote"
    man1.install "man/quote.1"
  end

  test do
    assert_match "quote", shell_output("#{bin}/quote --version")
  end
end
