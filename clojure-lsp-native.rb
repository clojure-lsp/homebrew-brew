class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.07.01-19.49.02"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.01-19.49.02/clojure-lsp-native-macos-amd64.zip"
    sha256 "174b06f3c31d121fe6d73237b1e973834bd089ca22ecc215b5fdc75aa1dff3ba"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.01-19.49.02/clojure-lsp-native-linux-amd64.zip"
    sha256 "49dba3ae9c90537a6d9ebd1886b19e3b4be219d3be6c58d59ddc835175753efe"
  end

  def install
    bin.install "clojure-lsp"
  end
end

