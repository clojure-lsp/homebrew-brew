class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.05.22-16.50.45"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.05.22-16.50.45/clojure-lsp-native-macos-amd64.zip"
    sha256 "c7b97e7aeec047a36e32b79555f17e4f9b48717310d428eb26c340b319ffe61c"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.05.22-16.50.45/clojure-lsp-native-linux-amd64.zip"
    sha256 "fb289b7041d76f25cf7c16c3b643f20150fec620fbd7c74acc1847b1d9248090"
  end

  def install
    bin.install "clojure-lsp"
  end
end

