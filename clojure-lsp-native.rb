class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2024.08.03-15.28.27"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.08.03-15.28.27/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.08.03-15.28.27/clojure-lsp-native-macos-amd64.zip"
      sha256 "fc9734132bdc1cc54af9d7272ce0468a9fd2340f09f75d77ca54b2050b8b3d67"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.08.03-15.28.27/clojure-lsp-native-linux-amd64.zip"
      sha256 "66d0ee8f3f6995df77ecc162e5715427fee00303b4c8b08d4d39cc667e8846e9"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.08.03-15.28.27/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "0611e88bb7a0cabfef2f99453434bcf90538161dde8d97e2273e53ea4c859017"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

