class Yarndb < Formula
  desc "YarnDB: A thread-safe, high-speed in-memory database for YAML data"
  homepage "https://github.com/deepfield-ml/yarndb"
  version "0.1.0"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/deepfield-ml/yarndb/releases/download/v0.1.0/yarndb-0.1.0-darwin-amd64.tar.gz"
    sha256 "97ab18c1c179b38d262b76ca0a2eabc2f9ea6a885037cfaa07a957eec1f327cd"
  elsif OS.linux?
    url "https://github.com/deepfield-ml/yarndb/releases/download/yarndb-0.1.0-linux-amd64/yarndb-0.1.0-linux-amd64.tar.gz"
    sha256 "aa5842ff628915f4cc3ae5ac9c40d6cc7679acbae75412eba75b489c55f36d0e"  
  end

  def install
    bin.install "yarndb"
  end

  test do
    assert_match "YarnDB", shell_output("#{bin}/yarndb --help")
  end
end
