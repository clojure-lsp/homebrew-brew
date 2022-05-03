class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.05.03-12.35.40"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.05.03-12.35.40/clojure-lsp-native-macos-amd64.zip"
    sha256 "32520aa126b0085a3582cc0f87fb62252146dc3e2a60c0c144b57dd3cc09fcd4"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.05.03-12.35.40/clojure-lsp-native-linux-amd64.zip"
    sha256 "c1296f0ad0d570276e345f54a64caf8a162ac147d32f8e1b0995a62d9da21135"
  end

  def install
    bin.install "clojure-lsp"
  end
end

