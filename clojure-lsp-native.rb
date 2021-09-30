class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.09.30-15.28.01"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.30-15.28.01/clojure-lsp-native-macos-amd64.zip"
    sha256 "09b9e8331e1da8dcf08a8dc5b8957945911827afbd3d56c7171a5c59e43a1be6"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.30-15.28.01/clojure-lsp-native-linux-amd64.zip"
    sha256 "c3ba76600d58cd05f174cb5505b4f95bf11860ac33e08be389d26820d5b03290"
  end

  def install
    bin.install "clojure-lsp"
  end
end

