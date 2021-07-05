class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.07.05-15.12.14"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.05-15.12.14/clojure-lsp-native-macos-amd64.zip"
    sha256 "2753189c7fe793f09986b4392abee93621f042e8886b5cc12038a8221b83e18c"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.05-15.12.14/clojure-lsp-native-linux-amd64.zip"
    sha256 "5545a394e4a7d70dbf451e3038e1aba8ef491f2757e0b9f54eef923ab8f34e65"
  end

  def install
    bin.install "clojure-lsp"
  end
end

