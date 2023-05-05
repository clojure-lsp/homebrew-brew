class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.05.04-19.38.01"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.05.04-19.38.01/clojure-lsp-native-macos-aarch64.zip"
      sha256 "e5b269e3d4a679f5e30fb26962bcf645fcd8bd409a55f46b40193651a438d93b"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.05.04-19.38.01/clojure-lsp-native-macos-amd64.zip"
      sha256 "b2b9cc3cd0fe28da5c23f9e4a585eadcc36084de611ea18398de40e27e4b7de3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.05.04-19.38.01/clojure-lsp-native-linux-amd64.zip"
      sha256 "6d53d5bc9de3c7c45244914565a8c3eecb0625176df51caea7697d5f87c45b9b"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.05.04-19.38.01/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "9b142dabf5458ee50012b7f83a2c3355dc9f5bcf58e2bbe462b1ab9e9da4ccff"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

