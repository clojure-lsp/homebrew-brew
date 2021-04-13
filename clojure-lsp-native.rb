class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.04.13-12.47.33"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.04.13-12.47.33/clojure-lsp-native-macos-amd64.zip"
  sha256 "e82819d9a08e9126dad93927e8ab875867baef84e04cf5025ab61fba04e01c67"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
