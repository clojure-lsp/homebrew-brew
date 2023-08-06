class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.08.06-00.28.06"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.08.06-00.28.06/clojure-lsp-native-macos-aarch64.zip"
      sha256 "3bb976bd95ae07f652e552f978defdd7bf01540782e229e9b31574c22b26f5fd"
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
      sha256 "1286c1a3a8f78a958090e9f6e6596b1f26858dbbb8a28ea010fd6351403f66cf"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

