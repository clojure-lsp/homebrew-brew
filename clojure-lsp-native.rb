class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.03.24-00.41.55"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.03.24-00.41.55/clojure-lsp-native-macos-amd64.zip"
  sha256 "0f1fea481552399da1d6797828dc08d37c9d3d5c9b42778488fdfc60c606923c"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
