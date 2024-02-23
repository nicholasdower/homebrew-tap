class Join < Formula
  desc "Join lines"
  homepage "https://github.com/nicholasdower/join"
  license "MIT"
  version "3.0.0"

  url "https://github.com/nicholasdower/join/releases/download/v3.0.0/join-3.0.0.tar.gz"
  sha256 "b00e9176a4417c0c9dd72f3f5d4a2f6dd75e00bab7a4673441e94917c6195478"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/join/releases/download/v3.0.0/"
    sha256 cellar: :any, monterey: "b605704151b3b945980cac03274159b5c4dac14cc9aed3ad1026b65a025d0869"
    sha256 cellar: :any, ventura: "b605704151b3b945980cac03274159b5c4dac14cc9aed3ad1026b65a025d0869"
    sha256 cellar: :any, sonoma: "b605704151b3b945980cac03274159b5c4dac14cc9aed3ad1026b65a025d0869"
    sha256 cellar: :any, arm64_sonoma: "7408a86d82718420e93dab8be5859528a1a76691e84d150715dfe6a1adc51da3"
    sha256 cellar: :any, arm64_monterey: "7408a86d82718420e93dab8be5859528a1a76691e84d150715dfe6a1adc51da3"
    sha256 cellar: :any, arm64_ventura: "7408a86d82718420e93dab8be5859528a1a76691e84d150715dfe6a1adc51da3"
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
