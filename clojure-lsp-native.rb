class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.12.20-00.36.56"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.12.20-00.36.56/clojure-lsp-native-macos-amd64.zip"
    sha256 "1d9ed3c6aed5faecb222657f4f17e4c8d8ba595dd264f9d47c1f11c8fdacf0ce"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.12.20-00.36.56/clojure-lsp-native-linux-amd64.zip"
    sha256 "5b17eff5b8ef9f17202b1e2441615f039188ab7e84ee9af91f296c109ec73dd4"
  end

  def install
    bin.install "clojure-lsp"
  end
end

