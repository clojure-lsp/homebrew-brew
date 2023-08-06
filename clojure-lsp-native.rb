class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.08.06-00.28.06"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.08.06-00.28.06/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.08.06-00.28.06/clojure-lsp-native-macos-amd64.zip"
      sha256 "613496b54a77805ae222e4f30a20b0c668a0c32ee7dd9ff158461c8628a64ce5"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.08.06-00.28.06/clojure-lsp-native-linux-amd64.zip"
      sha256 "0649ae118b83f954cfd5072a8442865ad9766596b60ed6cdb5aff93e9210843b"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.08.06-00.28.06/clojure-lsp-native-static-linux-amd64.zip"
      sha256 ""
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

