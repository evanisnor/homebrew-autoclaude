class Autoclaude < Formula
  desc "Automated Claude Code runner with automatic rate-limit recovery"
  homepage "https://github.com/evanisnor/autoclaude"
  url "https://github.com/evanisnor/autoclaude/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "935b13d33dc4096fec543b6c4b64dc18ebe64c3fef297d1dc2454e505cae3ee7"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "autoclaude"
  end

  test do
    output = shell_output("#{bin}/autoclaude 2>&1", 1)
    assert_match "No prompt file found", output
  end
end
