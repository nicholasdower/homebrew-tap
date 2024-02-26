class Awake < Formula
  desc "Keep your Mac awake"
  homepage "https://github.com/nicholasdower/awake"
  license "MIT"
  version "2.0.1"

  url "https://github.com/nicholasdower/awake/releases/download/v2.0.1/awake-2.0.1.tar.gz"
  sha256 "c9a29565f8efaefb5541d7f48b3a9df4db4cda8fd5e4d3de65a2c13e1a9923aa"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/awake/releases/download/v2.0.1/"
    sha256 cellar: :any, monterey: "9fd07830152664f6b07747241021939b8eb639abb56c5f4c058a65fd9f17dbcf"
    sha256 cellar: :any, ventura: "9fd07830152664f6b07747241021939b8eb639abb56c5f4c058a65fd9f17dbcf"
    sha256 cellar: :any, sonoma: "9fd07830152664f6b07747241021939b8eb639abb56c5f4c058a65fd9f17dbcf"
    sha256 cellar: :any, arm64_sonoma: "0d87b02811f7c4db3a25c78fd40a65df6a7ece08dbe249ddaf1640c9d09116ac"
    sha256 cellar: :any, arm64_monterey: "0d87b02811f7c4db3a25c78fd40a65df6a7ece08dbe249ddaf1640c9d09116ac"
    sha256 cellar: :any, arm64_ventura: "0d87b02811f7c4db3a25c78fd40a65df6a7ece08dbe249ddaf1640c9d09116ac"
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
