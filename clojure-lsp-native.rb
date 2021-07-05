class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.07.05-20.31.12"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.05-20.31.12/clojure-lsp-native-macos-amd64.zip"
    sha256 "bf9d106f195ec6c202fc8052e9da6634bdbafacea62d2260728386d9673cf256"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.05-20.31.12/clojure-lsp-native-linux-amd64.zip"
    sha256 "f6d2402ce2737652eeccb3dcc3a49f848b7c386ac609382a9faf991c2d38edd9"
  end

  def install
    bin.install "clojure-lsp"
  end
end

