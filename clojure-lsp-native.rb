class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.05.23-13.18.11"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.05.23-13.18.11/clojure-lsp-native-macos-amd64.zip"
    sha256 "260c8f78aedb56f7566407134cc6a8785e75d09d06cc2b94ac7e6a1bdc3489b1"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.05.23-13.18.11/clojure-lsp-native-linux-amd64.zip"
    sha256 "1bc116cd57b95813f3af29583dd7c567a1f06832b256aba100b2335a054d7d64"
  end

  def install
    bin.install "clojure-lsp"
  end
end

