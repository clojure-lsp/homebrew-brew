class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.11.16-16.52.14"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.11.16-16.52.14/clojure-lsp-native-macos-amd64.zip"
    sha256 "7e07ba6ae6adfabbcba88acb37243a1eaf862b78a6b28554401a91dc0f9e86f6"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.11.16-16.52.14/clojure-lsp-native-linux-amd64.zip"
    sha256 "adb49c987664eac94864c5a7b2aa84df8c874d2d774f61369c3f829e2a7e59c9"
  end

  def install
    bin.install "clojure-lsp"
  end
end

