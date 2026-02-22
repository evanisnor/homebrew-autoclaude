class Autoclaude < Formula
  desc "Automated Claude Code runner with automatic rate-limit recovery"
  homepage "https://github.com/evanisnor/autoclaude"
  url "https://github.com/evanisnor/autoclaude/releases/download/v0.8.0/autoclaude-0.8.0.tar.gz"
  sha256 "d29fedd345c66943175ec3831b1f831d38b4878e443bb1a27b7b416527f3fcda"
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
