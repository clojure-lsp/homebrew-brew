class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2026.10.15-11.42.38"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.10.15-11.42.38/clojure-lsp-native-macos-aarch64.zip"
      sha256 "84df57e51e27f4ecf20d0cd65aab3296e2ebf28dbaacca4fe216b6cf20485716"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.10.15-11.42.38/clojure-lsp-native-macos-amd64.zip"
      sha256 "468c261b48a7276c79cb92a82ddfce5474bc563ba6673df30cabf17a7f239ef3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.10.15-11.42.38/clojure-lsp-native-linux-amd64.zip"
      sha256 "d68acf630465cec9d3685fd958f914d9228d90a07222edd301f1a4740b8e8b76"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.10.15-11.42.38/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "81fa5cc4aeef09fd14e94b9913d3e46a47c32f39096d60c49b27f3609912c44a"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

