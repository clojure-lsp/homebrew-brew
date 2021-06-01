class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.06.01-16.19.44"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.06.01-16.19.44/clojure-lsp-native-macos-amd64.zip"
    sha256 "c071b677d7f98199d16b6a934ae43de8baa31ba906216ca3e62f1b768482a406"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.06.01-16.19.44/clojure-lsp-native-linux-amd64.zip"
    sha256 "8fbb3def8447e4a23b1da30054e29f586cee09589364654d4b994b7b8d72f0f4"
  end

  def install
    bin.install "clojure-lsp"
  end
end

