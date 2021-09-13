class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.09.13-22.25.35"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.13-22.25.35/clojure-lsp-native-macos-amd64.zip"
    sha256 "1698889b404d9fcf634387335c1de2e5547086327dd439a1d9efa10ff66b5db5"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.13-22.25.35/clojure-lsp-native-linux-amd64.zip"
    sha256 "3ebd08af05f1d4958d911f7e16c8b80fe0c119f1aed95b70d1d1bbd837099235"
  end

  def install
    bin.install "clojure-lsp"
  end
end

