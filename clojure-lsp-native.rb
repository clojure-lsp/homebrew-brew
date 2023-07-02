class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.07.01-22.35.41"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.07.01-22.35.41/clojure-lsp-native-macos-aarch64.zip"
      sha256 "8d68e7804622f8aea169805d853cf6229c3a145f5291dbda0a1e6fa29fb32595"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.07.01-22.35.41/clojure-lsp-native-macos-amd64.zip"
      sha256 "9d8759d246787d6c25d9382d3444d0aa9af6ebba71360154c22d3c62775f8d4b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.07.01-22.35.41/clojure-lsp-native-linux-amd64.zip"
      sha256 "cd58c090aaed56db72f4ef96a9c3d8c0dfa824fc72b13d804b86455a7b4e288c"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.07.01-22.35.41/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "284ad97e46c4a6abe5fbd4d99534c2fc97d0bcc7a22d048bfc9f426050d5b4a8"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

