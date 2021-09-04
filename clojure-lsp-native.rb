class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.09.04-17.11.44"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.04-17.11.44/clojure-lsp-native-macos-amd64.zip"
    sha256 "4f4e04878364d49d035f827d0b4a5a9ac7dcf867fba8e65daed2cbcf057c3c80"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.04-17.11.44/clojure-lsp-native-linux-amd64.zip"
    sha256 "ba29ce4cc39eb22b5d14c1f30ad4d9f24d26197d9ab22ab3f0d8eadd77f442ac"
  end

  def install
    bin.install "clojure-lsp"
  end
end

