class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.10.20-13.04.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.10.20-13.04.11/clojure-lsp-native-macos-amd64.zip"
    sha256 "0eaf38de2d12adf1bea35856ab9f2f43eff7e8838dcf774dce465b953b547190"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.10.20-13.04.11/clojure-lsp-native-linux-amd64.zip"
    sha256 "230310e0112229a3d16939626b1f13904378db434340eff6c6f094f66fc96074"
  end

  def install
    bin.install "clojure-lsp"
  end
end

