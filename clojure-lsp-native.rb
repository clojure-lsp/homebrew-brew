class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.08.05-19.36.09"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.05-19.36.09/clojure-lsp-native-macos-amd64.zip"
    sha256 "b5218f1aa547fda1d5cc1bdd66b080167c311a1153cf5d0798a18ccefc07ed98"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.05-19.36.09/clojure-lsp-native-linux-amd64.zip"
    sha256 "d0c3bd50dbeb5f14d364b640a414de119b729ee567971283ced760a5dd175cb7"
  end

  def install
    bin.install "clojure-lsp"
  end
end

