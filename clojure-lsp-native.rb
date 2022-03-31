class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.03.31-14.21.14"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.03.31-14.21.14/clojure-lsp-native-macos-amd64.zip"
    sha256 "e693c4da268794f0bf64e8378de26cfcebec3cc9903fda2d0b72f82e96ebe289"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.03.31-14.21.14/clojure-lsp-native-linux-amd64.zip"
    sha256 "ab6804561d57e2a02c22e143cc03cc0c5d1dc24c33b664de2891062802533620"
  end

  def install
    bin.install "clojure-lsp"
  end
end

