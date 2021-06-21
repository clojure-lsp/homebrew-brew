class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.06.21-14.30.54"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.06.21-14.30.54/clojure-lsp-native-macos-amd64.zip"
    sha256 "2131ec130bd08aa5a9d495a4b18869677e612e94feb17d69126f233ddb5f6644"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.06.21-14.30.54/clojure-lsp-native-linux-amd64.zip"
    sha256 "0cfbb7c228c9b82a664e418b2217c8f3e1492f035435c88d4e641ec230273448"
  end

  def install
    bin.install "clojure-lsp"
  end
end

