class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.11.28-12.47.43"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.11.28-12.47.43/clojure-lsp-native-macos-aarch64.zip"
      sha256 "f03040ae8ee028b858bbe9b5d5bc2cd88b1d2438c1b74d06816e2aedbe677574"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.11.28-12.47.43/clojure-lsp-native-macos-amd64.zip"
      sha256 "d819a2556df02e50288ab142763d36791adb243792c4a95b3fcbab08ba2d7793"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.11.28-12.47.43/clojure-lsp-native-linux-amd64.zip"
      sha256 "6021378f08248c140aecaea88cc27822cc70093362b5805d27173c29dcafcd0d"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.11.28-12.47.43/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "e27f7eff293fd498940bcba5e49aad2c79db51efd81ffd7dd29760b0f25da2ce"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

