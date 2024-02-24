class Awake < Formula
  desc "Stay awake"
  homepage "https://github.com/nicholasdower/awake"
  license "MIT"
  version "1.0.0"

  url "https://github.com/nicholasdower/awake/releases/download/v1.0.0/awake-1.0.0.tar.gz"
  sha256 "5047025b36d8bf9922ff1ef33e1ecc7271e34579b785d7e6f9ddf0ee2ddb3958"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/awake/releases/download/v1.0.0/"
    sha256 cellar: :any, monterey: "9d446a948ba32729f26b88fe5e339cb60f4330cb31e21bbaa99d5bb86b02f0b0"
    sha256 cellar: :any, ventura: "9d446a948ba32729f26b88fe5e339cb60f4330cb31e21bbaa99d5bb86b02f0b0"
    sha256 cellar: :any, sonoma: "9d446a948ba32729f26b88fe5e339cb60f4330cb31e21bbaa99d5bb86b02f0b0"
    sha256 cellar: :any, arm64_sonoma: "2fb65573e4198ca30a48dc9790e4f516bb639b98c06a6fce5c1360da36a8f5a1"
    sha256 cellar: :any, arm64_monterey: "2fb65573e4198ca30a48dc9790e4f516bb639b98c06a6fce5c1360da36a8f5a1"
    sha256 cellar: :any, arm64_ventura: "2fb65573e4198ca30a48dc9790e4f516bb639b98c06a6fce5c1360da36a8f5a1"
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
