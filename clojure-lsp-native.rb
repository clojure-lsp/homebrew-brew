class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.06.14-17.00.47"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.06.14-17.00.47/clojure-lsp-native-macos-amd64.zip"
    sha256 "5fa304a02aef2564f856c8e70a815074686bf831df8ff41e3795cb4445997825"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.06.14-17.00.47/clojure-lsp-native-linux-amd64.zip"
    sha256 "42eca6454ebb84f169d57829099788b06342644697a283434c269c6fa5285b9d"
  end

  def install
    bin.install "clojure-lsp"
  end
end

