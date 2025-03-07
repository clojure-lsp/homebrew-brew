class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.03.07-17.42.36"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.07-17.42.36/clojure-lsp-native-macos-aarch64.zip"
      sha256 "0f9460101657303fe5c6ce4aa799999c01457f2bb740af3697442fbedbc75dd2"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.07-17.42.36/clojure-lsp-native-macos-amd64.zip"
      sha256 "57f08d3ae9795f9e5abed86427f7051d44bd8e89e5c9b32afe17f119e2e53ec7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.07-17.42.36/clojure-lsp-native-linux-amd64.zip"
      sha256 "e46158bd4f22d09cebb4ba076dd080b7df643e6511ddc4d78853aff1e7b8bddf"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.07-17.42.36/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "2cd065cc384119786f4c8b659e19c19278e09e28a4a0b5fe727936384716dd87"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

