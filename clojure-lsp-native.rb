class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.03.26-18.47.08"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.03.26-18.47.08/clojure-lsp-native-macos-amd64.zip"
    sha256 "2febe2c9756e090509663f80d447df2f687caf68d507f7b5270b110c4f35a9cd"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.03.26-18.47.08/clojure-lsp-native-linux-amd64.zip"
    sha256 "4061d8acbc895f7127014fca75c552cee9d0110c73794e9ea8938f166a31c4e5"
  end

  def install
    bin.install "clojure-lsp"
  end
end

