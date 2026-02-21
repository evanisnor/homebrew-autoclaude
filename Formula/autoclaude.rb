class Autoclaude < Formula
  desc "Automated Claude Code runner with automatic rate-limit recovery"
  homepage "https://github.com/evanisnor/autoclaude"
  url "https://github.com/evanisnor/autoclaude/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "bb01353dc6472e51d6dd4e1a68c11343b45407064bfbf0ee1889de64bdb213a2"
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
