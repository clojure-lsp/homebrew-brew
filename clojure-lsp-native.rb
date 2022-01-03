class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.01.03-15.41.19"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.01.03-15.41.19/clojure-lsp-native-macos-amd64.zip"
    sha256 "a0a5929e16ab8f6865a8973cd480e278dceddf3a651daad585269b592232652c"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.01.03-15.41.19/clojure-lsp-native-linux-amd64.zip"
    sha256 "28ff552c59021cfb3a58c25748bf9d339d20f97c9cde319061cbb006ca152363"
  end

  def install
    bin.install "clojure-lsp"
  end
end

