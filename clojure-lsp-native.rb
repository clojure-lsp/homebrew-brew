class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.02.01-16.53.14"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.02.01-16.53.14/clojure-lsp-native-macos-amd64.zip"
    sha256 "491cffc1d0345a149177850682225338771a54bc0e38b7fabc1da93367010bc1"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.02.01-16.53.14/clojure-lsp-native-linux-amd64.zip"
    sha256 "13efdd7a9122b81b506d0807f96c28543b1b67e608fd5e02d9099c8d1c3a0df4"
  end

  def install
    bin.install "clojure-lsp"
  end
end

