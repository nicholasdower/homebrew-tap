class Quote < Formula
  desc "Quote lines"
  homepage "https://github.com/nicholasdower/quote"
  license "MIT"
  version "3.0.0"

  url "https://github.com/nicholasdower/quote/releases/download/v3.0.0/quote-3.0.0.tar.gz"
  sha256 "e566dd2c0c6c953ae60359f01453dae69690baf3c7ef671e92445db9f2a8baf7"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/quote/releases/download/v3.0.0/"
    sha256 cellar: :any, monterey: "05837bf5dcebfc444eb3a42a89ad52b2470c4f5e17ee01a2bb8df70b8c615836"
    sha256 cellar: :any, ventura: "05837bf5dcebfc444eb3a42a89ad52b2470c4f5e17ee01a2bb8df70b8c615836"
    sha256 cellar: :any, sonoma: "05837bf5dcebfc444eb3a42a89ad52b2470c4f5e17ee01a2bb8df70b8c615836"
    sha256 cellar: :any, arm64_sonoma: "899e83122d63f7c79d93cfb30ecbb943dc6b8acba0b6bc51fb663b399cb90560"
    sha256 cellar: :any, arm64_monterey: "899e83122d63f7c79d93cfb30ecbb943dc6b8acba0b6bc51fb663b399cb90560"
    sha256 cellar: :any, arm64_ventura: "899e83122d63f7c79d93cfb30ecbb943dc6b8acba0b6bc51fb663b399cb90560"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    man1.install "man/quote.1"
  end

  test do
    assert_match "quote", shell_output("#{bin}/quote --version")
  end
end
