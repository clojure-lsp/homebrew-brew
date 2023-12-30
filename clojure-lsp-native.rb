class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.12.29-12.09.27"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.12.29-12.09.27/clojure-lsp-native-macos-aarch64.zip"
      sha256 "aefc128ed4c5e343f0aac9b0e8b6bbadc02f0f920c81b9336c0f308e1b9bd844"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.12.29-12.09.27/clojure-lsp-native-macos-amd64.zip"
      sha256 "7209625341f3e75df90c76492ada1a211f038f50974bebce93d38e005cd15b62"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.12.29-12.09.27/clojure-lsp-native-linux-amd64.zip"
      sha256 "6d4c598777ddc98ecc7dee817b144ad46e0ac4ef337e0d4d6ffaac8f95a0a006"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.12.29-12.09.27/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "051b3035e25e660a0dd7a13cf0a6552ee21b66cdc1b5415430ac371dfd979d63"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

