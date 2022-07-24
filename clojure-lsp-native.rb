class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.07.24-18.25.43"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.07.24-18.25.43/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.07.24-18.25.43/clojure-lsp-native-macos-amd64.zip"
      sha256 "6f4f8d50e7aadc0e4f727beb9d46e3400cb53bc8812af7875fab0a08fb4f04e7"
    end
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.07.24-18.25.43/clojure-lsp-native-linux-amd64.zip"
    sha256 "8d0d00f57b4a0991c0ee998b91b17f47a830476ec568c0abe264b1416b791ce2"
  end

  def install
    bin.install "clojure-lsp"
  end
end

