class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.08.16-14.47.54"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.16-14.47.54/clojure-lsp-native-macos-amd64.zip"
    sha256 "5755f337a5dd6c50f94661ef6bd820c5e3cbdcccbee449c170333d3fddb562d4"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.08.16-14.47.54/clojure-lsp-native-linux-amd64.zip"
    sha256 "983837aa5768234c63c8149ee2f9b96025cfce834fb8d3c7ecdff1b0c867b88b"
  end

  def install
    bin.install "clojure-lsp"
  end
end

