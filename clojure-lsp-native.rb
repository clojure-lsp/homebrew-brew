class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.05.06-19.44.00"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.05.06-19.44.00/clojure-lsp-native-macos-amd64.zip"
    sha256 "f719478b02100f726815ad589c611add3d43f0784f71ff58377ede0956ac9542"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.05.06-19.44.00/clojure-lsp-native-linux-amd64.zip"
    sha256 "e95c5fae01864af43200205a910358212599dfa8c7d467e4cb45a36b0702721a"
  end

  def install
    bin.install "clojure-lsp"
  end
end

