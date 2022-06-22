class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.06.22-14.09.50"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.06.22-14.09.50/clojure-lsp-native-macos-amd64.zip"
    sha256 "807680d5e0a3b742c2bf8aced46b821ac499168fb98a61c3d6347a2ab18beb3d"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.06.22-14.09.50/clojure-lsp-native-linux-amd64.zip"
    sha256 "8c738decd881219a6cf60f46c8f1f40b5d6000c5a25bbb79f4b9f969d02cd1b7"
  end

  def install
    bin.install "clojure-lsp"
  end
end

