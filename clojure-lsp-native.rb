class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.08.15-15.37.37"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.15-15.37.37/clojure-lsp-native-macos-aarch64.zip"
      sha256 "8c61a213eb44c066f1d1a7c44ae01d01d8746eeec4cbe018a62c9fbe75823c26"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.15-15.37.37/clojure-lsp-native-macos-amd64.zip"
      sha256 "fa70b52afb967891fce32bb6eaf4e4de5657e46eec0086f58f2cfe23d80ac3e9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.15-15.37.37/clojure-lsp-native-linux-amd64.zip"
      sha256 "bd505cd3d469937dcfca7ce11f5e329bfb4081bff07a0bd1dd6f05e3c8db5633"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.15-15.37.37/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "87ab1c370363b25759d16e9cd51a8184ba2488db2a2eb080687492dbedae4b14"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

