class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.05.04-19.38.01"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.05.04-19.38.01/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.05.04-19.38.01/clojure-lsp-native-macos-amd64.zip"
      sha256 "b2b9cc3cd0fe28da5c23f9e4a585eadcc36084de611ea18398de40e27e4b7de3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.05.04-19.38.01/clojure-lsp-native-linux-amd64.zip"
      sha256 "6d53d5bc9de3c7c45244914565a8c3eecb0625176df51caea7697d5f87c45b9b"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.05.04-19.38.01/clojure-lsp-native-static-linux-amd64.zip"
      sha256 ""
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

