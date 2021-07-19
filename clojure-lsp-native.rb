class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2021.07.19-14.46.52"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.19-14.46.52/clojure-lsp-native-macos-amd64.zip"
    sha256 "67b5ff9312f04bf284c2b02f710ddde029e403bc1e012567b6815ea51c0e2a0a"
  elsif OS.linux?
    url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2021.07.19-14.46.52/clojure-lsp-native-linux-amd64.zip"
    sha256 "3c551029d06a4d29a52a5cfc559eaa45246facd6dfac86b6fe20dc36a2079b5f"
  end

  def install
    bin.install "clojure-lsp"
  end
end

