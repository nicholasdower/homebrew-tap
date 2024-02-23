class Quote < Formula
  desc "Quote lines"
  homepage "https://github.com/nicholasdower/quote"
  license "MIT"
  version "2.0.0"

  url "https://github.com/nicholasdower/quote/releases/download/v2.0.0/quote-2.0.0.tar.gz"
  sha256 "7e1747f3566e1d417925ee318acd767463c3980d429f48ca3e548a04d168bfbe"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/quote/releases/download/v2.0.0/"
    sha256 cellar: :any, monterey: "a4570d709a301865a825b57627261e4ca978b6e225ad2f2c5fd143f6a5d6240a"
    sha256 cellar: :any, ventura: "a4570d709a301865a825b57627261e4ca978b6e225ad2f2c5fd143f6a5d6240a"
    sha256 cellar: :any, sonoma: "a4570d709a301865a825b57627261e4ca978b6e225ad2f2c5fd143f6a5d6240a"
    sha256 cellar: :any, arm64_sonoma: "b0b336613efd054ddd70769065071ef8414f3ce81b2bc4375e878dcebf9874c0"
    sha256 cellar: :any, arm64_monterey: "b0b336613efd054ddd70769065071ef8414f3ce81b2bc4375e878dcebf9874c0"
    sha256 cellar: :any, arm64_ventura: "b0b336613efd054ddd70769065071ef8414f3ce81b2bc4375e878dcebf9874c0"
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
