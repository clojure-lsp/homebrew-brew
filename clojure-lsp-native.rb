class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2024.11.08-17.49.29"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.11.08-17.49.29/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.11.08-17.49.29/clojure-lsp-native-macos-amd64.zip"
      sha256 ""
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.11.08-17.49.29/clojure-lsp-native-linux-amd64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.11.08-17.49.29/clojure-lsp-native-static-linux-amd64.zip"
      sha256 ""
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

