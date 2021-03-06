class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.03.05-13.35.47"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.03.05-13.35.47/clojure-lsp-native-macos-amd64.zip"
  sha256 "a4c9bc1d23982f27d1dcd38cf3d8f7b9659e28d3667f5c954b83dd1d5215f847"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
