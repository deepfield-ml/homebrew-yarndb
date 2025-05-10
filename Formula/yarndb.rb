class Yarndb < Formula
  desc "YarnDB: A thread-safe, high-speed in-memory database for YAML data"
  homepage "https://github.com/deepfield-ml/yarndb"
  url "https://github.com/deepfield-ml/yarndb/releases/download/v0.1.0/yarndb-0.1.0-darwin-amd64.tar.gz"
  sha256 "97ab18c1c179b38d262b76ca0a2eabc2f9ea6a885037cfaa07a957eec1f327cd " 
  version "0.1.0"
  license "Apcahe-2.0"

  def install
    bin.install "yarndb"
  end

  test do
    assert_match "YarnDB", shell_output("#{bin}/yarndb --help")
  end
end
