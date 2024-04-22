class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2024.04.22-11.50.26"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.04.22-11.50.26/clojure-lsp-native-macos-aarch64.zip"
      sha256 "5fb902ff30e7f87626b5c6ae376ec9f278898abb01e12096923066471787641d"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.04.22-11.50.26/clojure-lsp-native-macos-amd64.zip"
      sha256 "bed83cbbc902cfd554a467da13acc37e4ec963827b212d45d0c8a05187d4191d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.04.22-11.50.26/clojure-lsp-native-linux-amd64.zip"
      sha256 "ab2b5fe794649909dae8d450c6d677b79a9d9af25da7aa4841e73f5de5aea945"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.04.22-11.50.26/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "a93368b16d33ebe10eab1917ba7a4eae48e676b10ffa9e452922c7c252dc2c7f"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

