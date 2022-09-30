class LipsumCli < Formula
  desc "Terminal application generating pseudo-Latin lorem ipsum text written in Rust"
  homepage "https://github.com/xlith/lipsum-cli"
  url "https://github.com/xlith/lipsum-cli/archive/refs/tags/0.2.1.tar.gz"
  sha256 "09573f4d956225c565c7f00b03cfd5bd9bc2ec9250e7d5d5eb409a6fa7dee27d"
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
