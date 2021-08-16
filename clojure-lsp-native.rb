class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.08.16-19.02.30"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.16-19.02.30/clojure-lsp-native-macos-amd64.zip"
    sha256 "9664b1812253d312047a680bea970627b138baf6a6d7696ae9f8dfd872559465"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.16-19.02.30/clojure-lsp-native-linux-amd64.zip"
    sha256 "5c377ce083d05ce8baf433413aeb8c72059b6a119f906f8c6e50b2ce8105ccf6"
  end

  def install
    bin.install "clojure-lsp"
  end
end

