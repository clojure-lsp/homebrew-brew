class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.04.07-16.34.10"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.04.07-16.34.10/clojure-lsp-native-macos-amd64.zip"
  sha256 "2dc4decafc5a6aeb23b0bbac42847fb226f7be9560e5620d8e61c6f03ac8ea43"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
