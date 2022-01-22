class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.01.22-01.31.09"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.01.22-01.31.09/clojure-lsp-native-macos-amd64.zip"
    sha256 "9c96cfc64157a6dbe51e620de20711984f3ea5b7687ae8a3ed7aa5ebc54453ae"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.01.22-01.31.09/clojure-lsp-native-linux-amd64.zip"
    sha256 "88317b14c00930c0ff4d3c1f6a0a5d81114a92cfeca2a9e90a2d7d631c73aa1b"
  end

  def install
    bin.install "clojure-lsp"
  end
end

