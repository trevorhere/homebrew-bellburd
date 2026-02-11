class Bellburd < Formula
  desc "Bellburd CLI for on-call management"
  homepage "https://github.com/trevorhere/bellburd"
  # Update url + sha256 per release.
  url "https://github.com/trevorhere/bellburd/releases/download/v0.1.0/bellburd-cli-0.1.0.tgz"
  sha256 "REPLACE_WITH_SHA256"
  license "UNLICENSED"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/bellburd", "--help"
  end
end
