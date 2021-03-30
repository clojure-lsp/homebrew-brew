class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.03.30-20.42.34"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.03.30-20.42.34/clojure-lsp-native-macos-amd64.zip"
  sha256 "a82ba6a21a7ecaf0bb3aa71dde9ba966fbad3421f19751e94586a4c6da858232"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
