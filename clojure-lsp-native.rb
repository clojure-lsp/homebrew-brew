class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.02.07-16.11.24"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.02.07-16.11.24/clojure-lsp-native-macos-aarch64.zip"
      sha256 "e7fdd33d4148d52f6355fda3902c5d5923cac1355e5a60d22aabb95a8d710267"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.02.07-16.11.24/clojure-lsp-native-macos-amd64.zip"
      sha256 "594247dfbdec3019e6935a975bf6ad76e33345600c6cf0bb2ed8d7e7bbe29455"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.02.07-16.11.24/clojure-lsp-native-linux-amd64.zip"
      sha256 "725e2fc1cf6af2089517b000dc730cdaaa7be89c32e93e2b5d3dffbb78cf9d02"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.02.07-16.11.24/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "16d0938294718174efc19e7e92cd06bd97fd0ba7e62626b76011880d531f17b1"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

