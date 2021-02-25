class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.02.24-14.23.08"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.02.24-14.23.08/clojure-lsp-native-macos-amd64.zip"
  sha256 "7296d118381303a91a24b4789fe7e374ddfb331415f7ae235d7626b5d80a83ee"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
