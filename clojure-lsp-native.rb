class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.12.01-12.28.16"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.12.01-12.28.16/clojure-lsp-native-macos-amd64.zip"
    sha256 "6c53000ca9f4cee8164f9b737a28e506dde26b3991fa5d5145cb8124dc71ba68"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.12.01-12.28.16/clojure-lsp-native-linux-amd64.zip"
    sha256 "01a3e776a09f04482e41d036a76872825c5d33665b097f0e1ba7699270268223"
  end

  def install
    bin.install "clojure-lsp"
  end
end

