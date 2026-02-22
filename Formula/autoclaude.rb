class Autoclaude < Formula
  desc "Automated Claude Code runner with automatic rate-limit recovery"
  homepage "https://github.com/evanisnor/autoclaude"
  url "https://github.com/evanisnor/autoclaude/releases/download/v0.6.0/autoclaude-0.6.0.tar.gz"
  sha256 "2e9cf7d2ec6ca31ed43f866c4ac63ae6a5036eaabf67a240a2093eea7d367237"
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
