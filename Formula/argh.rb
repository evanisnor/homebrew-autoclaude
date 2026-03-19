class Argh < Formula
  desc "A GitHub PR dashboard for the macOS terminal"
  homepage "https://github.com/evanisnor/argh"
  url "https://github.com/evanisnor/argh/releases/download/v0.0.0/argh_0.0.0_darwin_all.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "gh"
  depends_on "dandavison/delta/git-delta"

  def caveats
    <<~EOS
      To get started with argh, authenticate with GitHub:
        gh auth login

      Then launch the dashboard:
        argh
    EOS
  end

  def install
    bin.install "argh"
  end

  test do
    system "#{bin}/argh", "--version"
  end
end
