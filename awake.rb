class Awake < Formula
  desc "Keep your Mac awake"
  homepage "https://github.com/nicholasdower/awake"
  license "MIT"
  version "2.0.0"

  url "https://github.com/nicholasdower/awake/releases/download/v2.0.0/awake-2.0.0.tar.gz"
  sha256 "56e2a607b1775ab06bbcb4e400f927b3d1ac226bcf84a4dcebe2c04292d2c0af"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/awake/releases/download/v2.0.0/"
    sha256 cellar: :any, monterey: "949145a154e6887c62e0f6c8676e666aba0bcb1b0c9d2c7e655540870875af62"
    sha256 cellar: :any, ventura: "949145a154e6887c62e0f6c8676e666aba0bcb1b0c9d2c7e655540870875af62"
    sha256 cellar: :any, sonoma: "949145a154e6887c62e0f6c8676e666aba0bcb1b0c9d2c7e655540870875af62"
    sha256 cellar: :any, arm64_sonoma: "3b756bd4bc3f5c5f15003346d240589c76229dfb5864be3d7e2acb46d7619ca4"
    sha256 cellar: :any, arm64_monterey: "3b756bd4bc3f5c5f15003346d240589c76229dfb5864be3d7e2acb46d7619ca4"
    sha256 cellar: :any, arm64_ventura: "3b756bd4bc3f5c5f15003346d240589c76229dfb5864be3d7e2acb46d7619ca4"
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
