class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.01.22-23.28.23"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.01.22-23.28.23/clojure-lsp-native-macos-aarch64.zip"
      sha256 "08c0213c94fb1eb7978a20611b4c6bcfa862af1f8289b82c0e4dcf57fbe669c1"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.01.22-23.28.23/clojure-lsp-native-macos-amd64.zip"
      sha256 "c0fc46fcfa7e0e3a64ae4729ee6d4118f91295bbbdd1d934d553fd0eb3469e3f"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.01.22-23.28.23/clojure-lsp-native-linux-amd64.zip"
      sha256 "1cc7c44c94ed47d8664a887ca0458ed77c81e60c6ded4db621a0bcb89302b123"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.01.22-23.28.23/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "7d792c310ad9d617d78497a34d1fac3c383e2ca1b60493071ed68a780ac39496"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

