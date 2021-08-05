class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.08.05-18.25.54"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.05-18.25.54/clojure-lsp-native-macos-amd64.zip"
    sha256 "f5c023b0440748ba4a196d3dd822c85d75948130decaf61fc0f33a82667fb6e9"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.05-18.25.54/clojure-lsp-native-linux-amd64.zip"
    sha256 "17e90974a324c6f180397a518785075c8467229b25d2d0e5a5c8d12e6e1ee2a3"
  end

  def install
    bin.install "clojure-lsp"
  end
end

