class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2024.08.05-18.16.00"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.08.05-18.16.00/clojure-lsp-native-macos-aarch64.zip"
      sha256 "a69785f1dc94d08ce0f9b11a7f0114b030325eb7aabe3a754b51ea9db5eac0f5"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.08.05-18.16.00/clojure-lsp-native-macos-amd64.zip"
      sha256 "78a3a43d52215f819080de0e4c4f9445c6dc9bd3b11461f539a0ee428dc978b4"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.08.05-18.16.00/clojure-lsp-native-linux-amd64.zip"
      sha256 "1c52670c3c50eb0d1b99f605193cd1bb4a6de0f6ca389a5189283fd6ac8eacc7"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.08.05-18.16.00/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "0deaec7beb06a9e3f05babd6256ba856aef8016946a623ece2bef251127bf19a"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

