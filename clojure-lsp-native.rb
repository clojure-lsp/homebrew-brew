class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.05.14-15.26.02"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.05.14-15.26.02/clojure-lsp-native-macos-amd64.zip"
    sha256 "41f054c6ee8d23630b185be367870ca46c3d7ee6798c7f2b17741c1fa38c2c49"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.05.14-15.26.02/clojure-lsp-native-linux-amd64.zip"
    sha256 "72381f4d1810803ecb5f2da9dd75c8a103f95110daa55527537bddf44c84b2e7"
  end

  def install
    bin.install "clojure-lsp"
  end
end

