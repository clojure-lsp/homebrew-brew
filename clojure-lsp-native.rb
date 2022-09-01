class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.09.01-15.27.31"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.09.01-15.27.31/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.09.01-15.27.31/clojure-lsp-native-macos-amd64.zip"
      sha256 "6f829a79dfcafef2e712ecb381d537ecd7523b8f3a52e1bf19b1a0ed9d59f5b9"
    end
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.09.01-15.27.31/clojure-lsp-native-linux-amd64.zip"
    sha256 "802efbf74c335638fa27607f3ece926684ccf615a579eff5cc44845836ad46ea"
  end

  def install
    bin.install "clojure-lsp"
  end
end

