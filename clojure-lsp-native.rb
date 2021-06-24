class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.06.24-01.20.01"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.06.24-01.20.01/clojure-lsp-native-macos-amd64.zip"
    sha256 "7538177ca4fa13eed5c2a447e75d8b36ab37dd754d389ff290eea97f9d1dcf89"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.06.24-01.20.01/clojure-lsp-native-linux-amd64.zip"
    sha256 "f6f22724c55193ec157493eefa5d688ffa371a8a550c4a20f89f3706445b54ba"
  end

  def install
    bin.install "clojure-lsp"
  end
end

