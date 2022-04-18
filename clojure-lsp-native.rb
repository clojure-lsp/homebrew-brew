class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.04.18-00.59.32"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.04.18-00.59.32/clojure-lsp-native-macos-amd64.zip"
    sha256 "e94ee3727e06dacdacb3a1ae49ddd8d2e3d76669aaa8b0bce0d4069ac7e561e5"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.04.18-00.59.32/clojure-lsp-native-linux-amd64.zip"
    sha256 "7423f42288538167a11bd73e6c36f4d9b7306cde1b01458e8204e32d5070e22c"
  end

  def install
    bin.install "clojure-lsp"
  end
end

