class Joyn < Formula
  desc "Join lines"
  homepage "https://github.com/nicholasdower/joyn"
  url "https://github.com/nicholasdower/joyn/releases/download/v1.0.0/release.tar.gz"
  sha256 "bba1fc4cf3d7e44e5346f72ed2e0b5d9f7d2d8c7016b22ea69dc95f2b9ac2065"
  license "MIT"

  def install
    bin.install "bin/joyn"
    man1.install "man/joyn.1"
  end

  test do
    assert_match "joyn", shell_output("#{bin}/joyn --version")
  end
end
