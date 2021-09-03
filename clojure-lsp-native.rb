class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.09.03-00.42.46"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.03-00.42.46/clojure-lsp-native-macos-amd64.zip"
    sha256 "bb265e1daadae5febfa7182834c244e6bd5db493039b4d3eec3f52b144952cb5"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.03-00.42.46/clojure-lsp-native-linux-amd64.zip"
    sha256 "96b7b48a5afaacec0a8e9d99f3332e6f1dc00cf9b4a4d9ef9313f2b6a5150bf4"
  end

  def install
    bin.install "clojure-lsp"
  end
end

