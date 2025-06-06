class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.06.06-19.04.49"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.06.06-19.04.49/clojure-lsp-native-macos-aarch64.zip"
      sha256 "9869b07eb5bd5b3787ad57bcf561caea54b79fad18a80d3f58b71b10942c5df7"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.06.06-19.04.49/clojure-lsp-native-macos-amd64.zip"
      sha256 "5f486c90b1219b7f2213c1d672a27ecb6d30a9aedf252b0806e4f4195ccf150b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.06.06-19.04.49/clojure-lsp-native-linux-amd64.zip"
      sha256 "30a79e59ca9f0ede35676cbd055a7408e452062234ba2f2a2aed81e5213aabc7"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.06.06-19.04.49/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "1c5fb6d1a44e7a4b56429aed1600ccb74c75ab9efeb61bf3ef35432b706736b1"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

