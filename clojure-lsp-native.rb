class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.02.23-12.12.12"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.02.23-12.12.12/clojure-lsp-native-macos-amd64.zip"
    sha256 "954c2d55144885a8e082d9ae8abcfc8398cd16061bda1437492f82684a300f31"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.02.23-12.12.12/clojure-lsp-native-linux-amd64.zip"
    sha256 "5941a7bd6c76e659ee32c330aab24d1369aed3c032ead804e0af8c9049fac8cd"
  end

  def install
    bin.install "clojure-lsp"
  end
end

