class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.03.27-20.21.36"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.27-20.21.36/clojure-lsp-native-macos-aarch64.zip"
      sha256 "9eb94d38f2be78f5c39fe3d85dd262a33cf72e5e95b99aebe83b5e8eed286c06"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.27-20.21.36/clojure-lsp-native-macos-amd64.zip"
      sha256 "6f8f0c19763de74d493c85f168210a77e5846ad8a1a0031bb28f206c0b89b43c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.27-20.21.36/clojure-lsp-native-linux-amd64.zip"
      sha256 "68541236430bf835158976a021c31c857753e502352d5a686105bcb17c254fb6"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.27-20.21.36/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "0a335b1f9c378efb3902c131aba09bdcb82135f1505f8f2d7cb0f52a82614f09"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

