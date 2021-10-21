class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.10.20-16.49.47"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.10.20-16.49.47/clojure-lsp-native-macos-amd64.zip"
    sha256 "21ccd4c7dd4cda651d8d4f26388270465032537774fbc59f5c5bb3ce4eac9b00"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.10.20-16.49.47/clojure-lsp-native-linux-amd64.zip"
    sha256 "1e73f3a9daedfd31048620fc845e0ac06c0f2b1f3d5da87900f6ca4bd8f934d9"
  end

  def install
    bin.install "clojure-lsp"
  end
end

