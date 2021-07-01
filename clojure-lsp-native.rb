class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.07.01-13.46.18"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.01-13.46.18/clojure-lsp-native-macos-amd64.zip"
    sha256 "dc08d094ddeb66d63fd8098164205f4f2c4384b002aa45e84d2daef5d37b22b3"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.01-13.46.18/clojure-lsp-native-linux-amd64.zip"
    sha256 "0b0143a27517ee81b2871b3373f36d4cf84e0626c3dc03a4f44c75ef9baa207e"
  end

  def install
    bin.install "clojure-lsp"
  end
end

