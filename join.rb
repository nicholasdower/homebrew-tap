class Join < Formula
  desc "Join lines"
  homepage "https://github.com/nicholasdower/join"
  url "https://github.com/nicholasdower/join/releases/download/v1.0.0/release.tar.gz"
  sha256 "71a0f5123b5dd0afb6b3af461a16bce89207cd38753aec3815d4501c6c1cd8d5"
  license "MIT"

  def install
    bin.install "bin/join"
    man1.install "man/join.1"
  end

  test do
    assert_match "join", shell_output("#{bin}/join --version")
  end
end
