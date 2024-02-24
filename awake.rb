class Awake < Formula
  desc "Keep your Mac awake"
  homepage "https://github.com/nicholasdower/awake"
  license "MIT"
  version "1.2.0"

  url "https://github.com/nicholasdower/awake/releases/download/v1.2.0/awake-1.2.0.tar.gz"
  sha256 "fa61922cee9c48b58874086d07349eecb060ae2a413a52264166db15071a954f"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/awake/releases/download/v1.2.0/"
    sha256 cellar: :any, monterey: "027f75ec369c7eae1b5b574e91b45eafc77be9600fef7754bd4c533eb84cb341"
    sha256 cellar: :any, ventura: "027f75ec369c7eae1b5b574e91b45eafc77be9600fef7754bd4c533eb84cb341"
    sha256 cellar: :any, sonoma: "027f75ec369c7eae1b5b574e91b45eafc77be9600fef7754bd4c533eb84cb341"
    sha256 cellar: :any, arm64_sonoma: "257823394f5eb7e17403c9445dda211c5ab654044ef21a82dca17fcf7a09fdfa"
    sha256 cellar: :any, arm64_monterey: "257823394f5eb7e17403c9445dda211c5ab654044ef21a82dca17fcf7a09fdfa"
    sha256 cellar: :any, arm64_ventura: "257823394f5eb7e17403c9445dda211c5ab654044ef21a82dca17fcf7a09fdfa"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    man1.install "man/awake.1"
  end

  test do
    assert_match "awake", shell_output("#{bin}/awake --version")
  end
end
