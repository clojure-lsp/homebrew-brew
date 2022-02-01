class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.02.01-20.02.32"

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.02.01-20.02.32/clojure-lsp-native-macos-amd64.zip"
    sha256 "f39a0daf243f689b165ec4910ea272706d12316b64a115d9d589b7a09ea92a9f"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.02.01-20.02.32/clojure-lsp-native-linux-amd64.zip"
    sha256 "85a11f5b94f20de12630cc310824e613694734c063837fefe941cf4ab90224ed"
  end

  def install
    bin.install "clojure-lsp"
  end
end

