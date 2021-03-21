class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.03.21-23.29.19"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.03.21-23.29.19/clojure-lsp-native-macos-amd64.zip"
  sha256 "e09422382e4f8f51bf3efbebc16d8264adb7b6d0b90e913eeb47a99aa4bcd6b5"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
