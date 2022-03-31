class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.03.31-20.00.20"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.03.31-20.00.20/clojure-lsp-native-macos-amd64.zip"
    sha256 "3a14bfcc750dd3864dc67d91d13a7e8bd1c2c5fbf971efda6d4e738a491f201f"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.03.31-20.00.20/clojure-lsp-native-linux-amd64.zip"
    sha256 "21e770e7f71ceb9aab6301f5342417d9726d90a48f6c01d4e4aaddc4060bfdce"
  end

  def install
    bin.install "clojure-lsp"
  end
end

