class Join < Formula
  desc "Join lines"
  homepage "https://github.com/nicholasdower/join"
  license "MIT"
  version "2.0.0"

  url "https://github.com/nicholasdower/join/releases/download/v2.0.0/join-2.0.0.tar.gz"
  sha256 "150274f856f8f41ce6b4277f5bde4142d6ab0cd3665fd9bd224f717d499dc7ff"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/join/releases/download/v2.0.0/"
    sha256 cellar: :any, monterey: "6e5742f91cc05d9bed48b7b5adef0db40b37f8ea7f263d77963d428d1b6da0fc"
    sha256 cellar: :any, ventura: "6e5742f91cc05d9bed48b7b5adef0db40b37f8ea7f263d77963d428d1b6da0fc"
    sha256 cellar: :any, sonoma: "6e5742f91cc05d9bed48b7b5adef0db40b37f8ea7f263d77963d428d1b6da0fc"
    sha256 cellar: :any, arm64_sonoma: "4834092ec80a51fd75eb5d2f8a68033399deaa67f2d396d7ff38fa6f0385e7f1"
    sha256 cellar: :any, arm64_monterey: "4834092ec80a51fd75eb5d2f8a68033399deaa67f2d396d7ff38fa6f0385e7f1"
    sha256 cellar: :any, arm64_ventura: "4834092ec80a51fd75eb5d2f8a68033399deaa67f2d396d7ff38fa6f0385e7f1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    man1.install "man/join.1"
  end

  def caveats
    puts <<~MSG
      join has been installed but may not be first on your $PATH.

      Consider adding the following to your bashrc:

          export PATH="#{prefix}/bin:$PATH"

    MSG
  end

  test do
    assert_match "join", shell_output("#{bin}/join --version")
  end
end
