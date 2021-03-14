class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.03.06-17.05.35"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.03.06-17.05.35/clojure-lsp-native-macos-amd64.zip"
  sha256 "1e9519fbae2533e3433b4a9e0433e466e50e29273831e64ff9f44f04e59e6136"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
