class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.04.03-18.43.55"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.04.03-18.43.55/clojure-lsp-native-macos-amd64.zip"
  sha256 "582184de8655ccbc8dda0f338cbaff8ddd1a74772ef7603fa3ec71801a8fc893"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
