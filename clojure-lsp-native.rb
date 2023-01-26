class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.01.26-11.08.16"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.01.26-11.08.16/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.01.26-11.08.16/clojure-lsp-native-macos-amd64.zip"
      sha256 "c9883ca091045968ba3253f48fe5164a9625e2ced257f86a2ed0246c2c385a0a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.01.26-11.08.16/clojure-lsp-native-linux-amd64.zip"
      sha256 "e1b5feea50033d84ae1de47b50a8abb5466268161120b1964188a71b41aea23e"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.01.26-11.08.16/clojure-lsp-native-static-linux-amd64.zip"
      sha256 ""
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

