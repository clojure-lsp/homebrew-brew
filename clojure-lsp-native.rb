class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.01.03-19.46.10"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.01.03-19.46.10/clojure-lsp-native-macos-amd64.zip"
    sha256 "168ec8c50c375391714de59ffba9799437682c8b4acd9719c12ff7b737d00f3f"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.01.03-19.46.10/clojure-lsp-native-linux-amd64.zip"
    sha256 "cafad132547ce4a7cc98366c7524685230358804cc37d51ed7761b5f51d12ec1"
  end

  def install
    bin.install "clojure-lsp"
  end
end

