class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.05.27-17.42.34"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.05.27-17.42.34/clojure-lsp-native-macos-amd64.zip"
    sha256 "76df2cd059b0c4de45fdb2530631af94514b0b19ccd1d5a39455c1bbfcd2de25"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.05.27-17.42.34/clojure-lsp-native-linux-amd64.zip"
    sha256 "84079884cf404865153278e48c3099b3e162ea444114d7697803086f4d1a6c97"
  end

  def install
    bin.install "clojure-lsp"
  end
end

