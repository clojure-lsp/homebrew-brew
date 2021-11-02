class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.10.20-16.49.47"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.10.20-16.49.47/clojure-lsp-native-macos-amd64.zip"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.10.20-16.49.47/clojure-lsp-native-linux-amd64.zip"
    sha256 ""
  end

  def install
    bin.install "clojure-lsp"
  end
end

