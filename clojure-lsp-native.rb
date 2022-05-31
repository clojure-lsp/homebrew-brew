class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.05.31-17.35.50"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.05.31-17.35.50/clojure-lsp-native-macos-amd64.zip"
    sha256 "42d6bac9fbafaab4111419edb50b4bc58b75bc2f00079ce6db5756f5825b6cfe"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.05.31-17.35.50/clojure-lsp-native-linux-amd64.zip"
    sha256 "ac5642aedd2f2fe0cdae466d53daba6fe55580bb404797a220914fbc374e49c0"
  end

  def install
    bin.install "clojure-lsp"
  end
end

