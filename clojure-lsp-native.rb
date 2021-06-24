class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.06.24-14.24.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.06.24-14.24.11/clojure-lsp-native-macos-amd64.zip"
    sha256 "781bb4f996ca2502ea7bba7040fe9ed8898a9313a61d397825dde46be78ce2ff"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.06.24-14.24.11/clojure-lsp-native-linux-amd64.zip"
    sha256 "cb3267aa3f0a28a40961da4af6ee89de25ac52fcba85c993ce437df92863ce17"
  end

  def install
    bin.install "clojure-lsp"
  end
end

