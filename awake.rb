class Awake < Formula
  desc "Keep your Mac awake"
  homepage "https://github.com/nicholasdower/awake"
  license "MIT"
  version "1.1.2"

  url "https://github.com/nicholasdower/awake/releases/download/v1.1.2/awake-1.1.2.tar.gz"
  sha256 "9bdacd323e7a2f883e699e95d51d7828a3d8b10a34eb4b6737c1170cfa11862f"

  bottle do
    rebuild 1
    root_url "https://github.com/nicholasdower/awake/releases/download/v1.1.2/"
    sha256 cellar: :any, monterey: "2e986d3f7b02a5c89822c122ac3fd7aa50e6a205373109159fc101817a7a37a0"
    sha256 cellar: :any, ventura: "2e986d3f7b02a5c89822c122ac3fd7aa50e6a205373109159fc101817a7a37a0"
    sha256 cellar: :any, sonoma: "2e986d3f7b02a5c89822c122ac3fd7aa50e6a205373109159fc101817a7a37a0"
    sha256 cellar: :any, arm64_sonoma: "f7191d0c1793560a535e569dad661ef1dd0edc2724d3ac1b73ee376cf5d22742"
    sha256 cellar: :any, arm64_monterey: "f7191d0c1793560a535e569dad661ef1dd0edc2724d3ac1b73ee376cf5d22742"
    sha256 cellar: :any, arm64_ventura: "f7191d0c1793560a535e569dad661ef1dd0edc2724d3ac1b73ee376cf5d22742"
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
