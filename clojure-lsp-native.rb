class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.07.12-12.30.59"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.12-12.30.59/clojure-lsp-native-macos-amd64.zip"
    sha256 "9f0638cf0a9483f0d82d1dc040b8531f07c755235358c7ca1153de8342ee1301"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.12-12.30.59/clojure-lsp-native-linux-amd64.zip"
    sha256 "55a9b92e62ba18f17475cff16105f4a25ef0696fa8261d7bdfe16a4c6086bee1"
  end

  def install
    bin.install "clojure-lsp"
  end
end

