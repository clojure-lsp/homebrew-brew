class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.08.03-13.33.03"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.03-13.33.03/clojure-lsp-native-macos-amd64.zip"
    sha256 "99e43655c1ffa23e73e9e93ceef022adf337ede2c1fae96623ff9176f948dc0e"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.03-13.33.03/clojure-lsp-native-linux-amd64.zip"
    sha256 "3f82959cde3d45ca5f4ee2641aecf04673a83f3d6027874c7130e1270bc68bb7"
  end

  def install
    bin.install "clojure-lsp"
  end
end

