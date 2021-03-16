class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.03.14-23.22.46"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.03.14-23.22.46/clojure-lsp-native-macos-amd64.zip"
  sha256 "b7e3eec7114b59efae8e9bf4150519af80a79f3f959c4c2420322f44dbcf3262"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
