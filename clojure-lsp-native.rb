class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.11.03-00.14.57"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.11.03-00.14.57/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.11.03-00.14.57/clojure-lsp-native-macos-amd64.zip"
      sha256 "92294c89164887b5e88022c4dde40f1c4a81e574c2c99de6343f696537107494"
    end
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.11.03-00.14.57/clojure-lsp-native-linux-amd64.zip"
    sha256 "f611f772904361aa691df88fe055ce4fb26b1f67490c661eced0df0561bccf24"
  end

  def install
    bin.install "clojure-lsp"
  end
end

