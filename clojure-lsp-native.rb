class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.04.23-15.49.47"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.04.23-15.49.47/clojure-lsp-native-macos-amd64.zip"
  sha256 "11487f869f1fed117addc47f2c1dc8060b00e6738f7ae850d8f73d56022c98b1"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
