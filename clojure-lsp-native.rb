class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2024.03.13-13.11.00"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.13-13.11.00/clojure-lsp-native-macos-aarch64.zip"
      sha256 "bc7f32c1c3484399863726b6b58b8ed426e3a8498497256c25110f5b34eab1c2"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.13-13.11.00/clojure-lsp-native-macos-amd64.zip"
      sha256 "87103a99b85a1868725edb0b0e95de89754b7f37492f333a79eecc1e1aa1cbc8"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.13-13.11.00/clojure-lsp-native-linux-amd64.zip"
      sha256 "e18c06fa7bf6e730f572542dd4c5800a4de43579ce3f6e1cc24f432e6a801fce"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.13-13.11.00/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "455742a6d017e7b7b8040e72e97581f1da7e12c7f120e07f46ce3f955529dcd0"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

