class ClojureLspNative < Formula

  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.03.01-19.18.54"
  url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.03.01-19.18.54/clojure-lsp-native-macos-amd64.zip"
  sha256 "ae0519c98b8968c0b03f7431dd380ebbce03faa5fcb08f48aa3460f147be300c"

  bottle :unneeded

  def install
    bin.install "clojure-lsp"

  end

end
