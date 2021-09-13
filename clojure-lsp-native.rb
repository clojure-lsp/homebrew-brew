class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.09.13-19.32.00"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.13-19.32.00/clojure-lsp-native-macos-amd64.zip"
    sha256 "5102b046243e676457be1161fad6ec11fca765e89b80dae74ea4bfc301c07e97"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.09.13-19.32.00/clojure-lsp-native-linux-amd64.zip"
    sha256 "3f013abb0f2792c6e0d3a9834ad726efd813bd5d08324e57fa2fb9671924c0b8"
  end

  def install
    bin.install "clojure-lsp"
  end
end

