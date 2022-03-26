class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.03.25-12.02.59"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.03.25-12.02.59/clojure-lsp-native-macos-amd64.zip"
    sha256 "303221293f539e236ef7952744a0e100ecdc48ed3631208b258636a2bd67aa58"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.03.25-12.02.59/clojure-lsp-native-linux-amd64.zip"
    sha256 "4af362b070c1f1d28ae9e9eed5bf8f2caa905bbf2e10db809a9fcb0b64242dc3"
  end

  def install
    bin.install "clojure-lsp"
  end
end

