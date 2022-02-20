class LipsumCli < Formula
  desc "Terminal application generating pseudo-Latin lorem ipsum text written in Rust"
  homepage "https://github.com/xlith/lipsum-cli"
  url "https://github.com/xlith/lipsum-cli/archive/refs/tags/0.2.0.tar.gz"
  sha256 "06a0e32c05fcddc41810f0dddf38351cf4333ed4235d39f075d65186e8144c10"
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
