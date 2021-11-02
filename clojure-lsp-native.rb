class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.11.02-15.24.47"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.11.02-15.24.47/clojure-lsp-native-macos-amd64.zip"
    sha256 "3a027cd35d19ca3960cb1ec87d907de88689eecfa561e5e5cb0d6ea25b45b832"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.11.02-15.24.47/clojure-lsp-native-linux-amd64.zip"
    sha256 "2d04e002c3f21f31db4ff334abfaf079d6c30a4a3085bf1720b54717eef08b1b"
  end

  def install
    bin.install "clojure-lsp"
  end
end

