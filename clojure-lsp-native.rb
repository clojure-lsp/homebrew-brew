class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.06.29-19.32.13"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.06.29-19.32.13/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.06.29-19.32.13/clojure-lsp-native-macos-amd64.zip"
      sha256 "36b51938b18986a3a75d57144baceaf8dc61d1693be553948cd51d616b5cc9b2"
    end
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.06.29-19.32.13/clojure-lsp-native-linux-amd64.zip"
    sha256 "b03d0830b779dcee662c99701925c3f1d1841589913c54b64649bb6aee59cc8e"
  end

  def install
    bin.install "clojure-lsp"
  end
end

