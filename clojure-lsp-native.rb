class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.08.16-14.47.54"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.16-14.47.54/clojure-lsp-native-macos-amd64.zip"
    sha256 "794daf94c04f7791f31db583f93d7c66bf0cc0417425a2ba6936be169d8c2a14"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.16-14.47.54/clojure-lsp-native-linux-amd64.zip"
    sha256 "5a8fd2ba87f3c2db6b30bfb5cbec362b5e9c6e4bda8c6f4031f7bdb16be6c4b6"
  end

  def install
    bin.install "clojure-lsp"
  end
end

