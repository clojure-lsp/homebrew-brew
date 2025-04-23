class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.04.23-18.16.46"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.04.23-18.16.46/clojure-lsp-native-macos-aarch64.zip"
      sha256 "75fdc324ea2f70c79a58ccdc6ec902b121cf1173d97f524125483b152063337a"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.04.23-18.16.46/clojure-lsp-native-macos-amd64.zip"
      sha256 "f8cd0b4989d34270a0cc1df24d1065354b91769e4ea9efb6250110f65894ab5b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.04.23-18.16.46/clojure-lsp-native-linux-amd64.zip"
      sha256 "b564559d18f4be45fbc0e0a437e19ed353bd3c9b35544bad544db65a6efe1bc8"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.04.23-18.16.46/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "f2d5a905f79f92d2962093edf5b93817c744e556bf666d7702c19cd265abac34"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

