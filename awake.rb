class Awake < Formula
  desc "Keep your Mac awake"
  homepage "https://github.com/nicholasdower/awake"
  license "MIT"
  version "2.1.0"

  url "https://github.com/nicholasdower/awake/releases/download/v2.1.0/awake-2.1.0.tar.gz"
  sha256 "7e71a2ef7f1225265f011838e26cad33cd5714c0da65c8a457380e64527a74d6"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/awake/releases/download/v2.1.0/"
    sha256 cellar: :any, monterey: "ed35cfc52dccdfc69a6893bdbbc64b7636b472abccce69d6ee408bc12d3157a9"
    sha256 cellar: :any, ventura: "ed35cfc52dccdfc69a6893bdbbc64b7636b472abccce69d6ee408bc12d3157a9"
    sha256 cellar: :any, sonoma: "ed35cfc52dccdfc69a6893bdbbc64b7636b472abccce69d6ee408bc12d3157a9"
    sha256 cellar: :any, arm64_sonoma: "8d2aa13b7e4f227e44e1f3043cb972e479fa044551258043275d714620d786bc"
    sha256 cellar: :any, arm64_monterey: "8d2aa13b7e4f227e44e1f3043cb972e479fa044551258043275d714620d786bc"
    sha256 cellar: :any, arm64_ventura: "8d2aa13b7e4f227e44e1f3043cb972e479fa044551258043275d714620d786bc"
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
