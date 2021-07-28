class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.07.28-14.24.06"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.28-14.24.06/clojure-lsp-native-macos-amd64.zip"
    sha256 "133e75bf4e301466ec7505ad483b88d1436ea12bc91037b3c6e25361887760b5"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.28-14.24.06/clojure-lsp-native-linux-amd64.zip"
    sha256 "104918932df98bdf6584fbd263ea6909dcf1e01d4d18c9ff49c9c2eff4ab13e5"
  end

  def install
    bin.install "clojure-lsp"
  end
end

