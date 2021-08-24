class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.08.24-14.41.56"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.24-14.41.56/clojure-lsp-native-macos-amd64.zip"
    sha256 "324e0a1b5dccdb25601993b154759eec33564b201ce7680fe470f7814993ac1f"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.24-14.41.56/clojure-lsp-native-linux-amd64.zip"
    sha256 "84f749b939074e39c6b28c3cc844ec0a233f964335a34f504155689e56dfce03"
  end

  def install
    bin.install "clojure-lsp"
  end
end

