class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.10.30-16.25.41"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.10.30-16.25.41/clojure-lsp-native-macos-aarch64.zip"
      sha256 "af93c249add42bce6687c2ad1ffe79a38309eb4f7cde2f6d5bd2d44a56a69993"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.10.30-16.25.41/clojure-lsp-native-macos-amd64.zip"
      sha256 "16334c815405b609f2baf7184b734b9476e7dc8ff26e129644c7041271c86391"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.10.30-16.25.41/clojure-lsp-native-linux-amd64.zip"
      sha256 "b7d82d0b6828b89a6f6ab3e7e9738dacbf7e5350c414df1266332858978fa697"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.10.30-16.25.41/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "8f665188d4d875f79aea9fa22ca87d8902c6c6b49427ab5075eeacf21cde1b8e"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

