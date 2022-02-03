class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.02.01-20.02.32"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.02.01-20.02.32/clojure-lsp-native-macos-amd64.zip"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.02.01-20.02.32/clojure-lsp-native-linux-amd64.zip"
    sha256 ""
  end

  def install
    bin.install "clojure-lsp"
  end
end

