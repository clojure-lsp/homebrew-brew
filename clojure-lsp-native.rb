class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.10.05-16.39.51"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.10.05-16.39.51/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.10.05-16.39.51/clojure-lsp-native-macos-amd64.zip"
      sha256 "54b933f21283f4879221adeca7aaa5c84f2e0342b35b4971194e17bc64a1d59e"
    end
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.10.05-16.39.51/clojure-lsp-native-linux-amd64.zip"
    sha256 "6582b2b2004c00cdba82c24c28b479c9a4e73cfa5a631c32910ff1851645d2c9"
  end

  def install
    bin.install "clojure-lsp"
  end
end

