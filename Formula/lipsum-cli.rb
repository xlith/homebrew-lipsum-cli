class LipsumCli < Formula
  desc "Terminal application generating pseudo-Latin lorem ipsum text written in Rust"
  homepage "https://github.com/xlith/lipsum-cli"
  url "https://github.com/xlith/lipsum-cli/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "bdf7280089e2bd39926c781c4ca379fa538720af2c2894dfd25ce81dcf580575"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
    output = shell_output("#{bin}/lipsum-cli -t lorem-ipsum")
    assert_match "Lorem ipsum dolor sit amet.", output
  end
end
