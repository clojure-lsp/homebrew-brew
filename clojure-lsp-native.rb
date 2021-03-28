class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.03.26-23.41.07"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.03.26-23.41.07/clojure-lsp-native-macos-amd64.zip"
  sha256 "fdb6ce150c02c320e75be70854492f90a4da63b15b5ddef3490c54411ec124fb"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
