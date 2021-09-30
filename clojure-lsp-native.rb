class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.09.30-12.28.16"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.30-12.28.16/clojure-lsp-native-macos-amd64.zip"
    sha256 "96d6ea924c3fcc1685fc121fcac76aab156641a4f9d4e49edddde11a80412704"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.30-12.28.16/clojure-lsp-native-linux-amd64.zip"
    sha256 "3a3dc79d065a496a1d1e7e41dd290f8a2e37876766d75f8565209ab98a6021d4"
  end

  def install
    bin.install "clojure-lsp"
  end
end

