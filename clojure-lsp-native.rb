class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.02.27-13.12.12"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.02.27-13.12.12/clojure-lsp-native-macos-aarch64.zip"
      sha256 "2df117c7fd73c009f1dc6613468cf8473f62fe40fd4b73d5327f4aa6c99e6de0"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.02.27-13.12.12/clojure-lsp-native-macos-amd64.zip"
      sha256 "63effc06ca3f9d7f914461c19e6a11e29a845aaf905bd7f023a69c456be3fa57"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.02.27-13.12.12/clojure-lsp-native-linux-amd64.zip"
      sha256 "7b2eabaf1f4e4c686aabc4f3a8ae800accf12880deff2dfd8838a83ce08186d6"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.02.27-13.12.12/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "c23a5c9029b3a548a6b8e66a0662103c13e44f220ad8e3f97abf0b7c53a994b1"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

