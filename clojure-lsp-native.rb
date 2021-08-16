class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.08.16-17.10.56"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.16-17.10.56/clojure-lsp-native-macos-amd64.zip"
    sha256 "0f008c42a42768bee1e620de9ad3049d0d47df3165ee30d60d64c6c871d2f770"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.16-17.10.56/clojure-lsp-native-linux-amd64.zip"
    sha256 "268772f294ba91dae54120698f2eea4d71ec645d67f0115a0cf7ecfe6299b20d"
  end

  def install
    bin.install "clojure-lsp"
  end
end

