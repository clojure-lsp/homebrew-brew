class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2024.11.08-17.49.29"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.11.08-17.49.29/clojure-lsp-native-macos-aarch64.zip"
      sha256 "180599991f7a922cd6ee102b49475c3315fff9644e4f6c40382d31e5ade4b5d0"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.11.08-17.49.29/clojure-lsp-native-macos-amd64.zip"
      sha256 "748b0af3e62ef38b5b9863410437973392e044b084491c115cfa9c0d84d23d86"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.11.08-17.49.29/clojure-lsp-native-linux-amd64.zip"
      sha256 "0df39517ad395a42a6a5cbe51a377cfa243dd688b5acc16dbc41da448a426105"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.11.08-17.49.29/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "4408776e8eb023a3467234ed2eddef72a6c1912cef11d9387a32f87173d8bfef"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

