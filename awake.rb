class Awake < Formula
  desc "Stay awake"
  homepage "https://github.com/nicholasdower/awake"
  license "MIT"
  version "1.1.0"

  url "https://github.com/nicholasdower/awake/releases/download/v1.1.0/awake-1.1.0.tar.gz"
  sha256 "6be23b32c13e241aa7e3f293f2091fda1093d7fb6d2c74eb04a719fb0f6d367c"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/awake/releases/download/v1.1.0/"
    sha256 cellar: :any, monterey: "8306ccc160d204946e743878fab4b726b7ecaffb14d026893fbd8faaf38e3e7d"
    sha256 cellar: :any, ventura: "8306ccc160d204946e743878fab4b726b7ecaffb14d026893fbd8faaf38e3e7d"
    sha256 cellar: :any, sonoma: "8306ccc160d204946e743878fab4b726b7ecaffb14d026893fbd8faaf38e3e7d"
    sha256 cellar: :any, arm64_sonoma: "38137843b6b4cac007e16d1ba9ae32ec57080ec00d23f6c0ec2caf83992f674a"
    sha256 cellar: :any, arm64_monterey: "38137843b6b4cac007e16d1ba9ae32ec57080ec00d23f6c0ec2caf83992f674a"
    sha256 cellar: :any, arm64_ventura: "38137843b6b4cac007e16d1ba9ae32ec57080ec00d23f6c0ec2caf83992f674a"
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
