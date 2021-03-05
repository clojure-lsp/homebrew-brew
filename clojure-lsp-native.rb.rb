class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.03.01-19.18.54"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.03.01-19.18.54/clojure-lsp-native-macos-amd64.zip"
  sha256 "849569176df27e332166672525ac43031f90ab1fa50ee9355de9cd6502766046"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
