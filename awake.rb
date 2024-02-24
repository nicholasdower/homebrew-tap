class Awake < Formula
  desc "Keep your Mac awake"
  homepage "https://github.com/nicholasdower/awake"
  license "MIT"
  version "1.1.1"

  url "https://github.com/nicholasdower/awake/releases/download/v1.1.1/awake-1.1.1.tar.gz"
  sha256 "08c2d49ca258d591b985a00b64b18eea5377e9ab7c0face13d42080f9a3cd85d"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/awake/releases/download/v1.1.1/"
    sha256 cellar: :any, monterey: "2925cf8e500833a0dabebb6392adcfdaf06c5ba3aea4b8d8a37eb10ee8c05e11"
    sha256 cellar: :any, ventura: "2925cf8e500833a0dabebb6392adcfdaf06c5ba3aea4b8d8a37eb10ee8c05e11"
    sha256 cellar: :any, sonoma: "2925cf8e500833a0dabebb6392adcfdaf06c5ba3aea4b8d8a37eb10ee8c05e11"
    sha256 cellar: :any, arm64_sonoma: "9e0b2db97a09ead81f3106762f5b9ab4fd3314d9b3ad03d54531b0aa15a1d50b"
    sha256 cellar: :any, arm64_monterey: "9e0b2db97a09ead81f3106762f5b9ab4fd3314d9b3ad03d54531b0aa15a1d50b"
    sha256 cellar: :any, arm64_ventura: "9e0b2db97a09ead81f3106762f5b9ab4fd3314d9b3ad03d54531b0aa15a1d50b"
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
