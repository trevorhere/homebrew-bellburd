class Bellburd < Formula
  desc "Bellburd CLI for on-call management"
  homepage "https://github.com/trevorhere/bellburd"
  url "https://github.com/trevorhere/homebrew-bellburd/releases/download/v0.1.1/bellburd-cli-0.1.1.tgz"
  sha256 "c5610f25c9b495f228b744f1ad174e3ce2e0b91793ee3d339a3b7dc1df048e3e"
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
