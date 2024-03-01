class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2024.03.01-11.37.51"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.01-11.37.51/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.01-11.37.51/clojure-lsp-native-macos-amd64.zip"
      sha256 "e38772d32d3daf8bac04485e59c0051d08a971a3fbbd787daf516abd2f41fbf2"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.01-11.37.51/clojure-lsp-native-linux-amd64.zip"
      sha256 "269aa169d7d42bcfed2694cdc4c8dfe0151bd1b7c4e6cb42f0c7046c7346de9b"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.01-11.37.51/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "adde8325b65df10acc5d598f2aee1e9349c05f7bae2450c5d8c615b1f7fcc3e9"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

