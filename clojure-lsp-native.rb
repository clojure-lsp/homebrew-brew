class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2026.07.06-14.34.19"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.07.06-14.34.19/clojure-lsp-native-macos-aarch64.zip"
      sha256 "dd9a8e36add53b8d8166bb3d7580c6e5563401aea87b62600786af2e7d37ccde"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.07.06-14.34.19/clojure-lsp-native-macos-amd64.zip"
      sha256 "0449f7f8fc975157cb4e5cdcf365bcd43bcf1fa47b99256427e7a86e4c17fc3f"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.07.06-14.34.19/clojure-lsp-native-linux-amd64.zip"
      sha256 "520f724ee02f4b3ecb225395a7a5a4ccad3878d6d1418240cd9636afcf9b858e"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.07.06-14.34.19/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "6404ea2490e602405d8058c3be5235648d9eac06158ff57f409e598627111998"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

