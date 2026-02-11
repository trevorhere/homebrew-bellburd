class Bellburd < Formula
  desc "Bellburd CLI for on-call management"
  homepage "https://github.com/trevorhere/bellburd"
  url "https://github.com/trevorhere/homebrew-bellburd/releases/download/v0.1.0/bellburd-cli-0.1.0.tgz"
  sha256 "c464e63b83322bfcbb28257b3ce23d840709fa5796ed3c72fba92f51945e8a88"
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
