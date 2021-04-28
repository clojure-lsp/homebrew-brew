class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.04.27-20.17.45"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.04.27-20.17.45/clojure-lsp-native-macos-amd64.zip"
    sha256 "1740e764bdfb1380d5d465ca4af3770de082a1a341acc381fcf29afd3313a143"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.04.27-20.17.45/clojure-lsp-native-linux-amd64.zip"
    sha256 "afa4493f251135f56dd74eb64348a89a413e40528769607cf044b94aa4644295"
  end

  def install
    bin.install "clojure-lsp"
  end
end

