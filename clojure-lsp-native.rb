class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.08.25-14.21.46"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.25-14.21.46/clojure-lsp-native-macos-aarch64.zip"
      sha256 "9f2ea9d6cd1fc62aa40b755f5e37620b3461cf24cde04bc4b7a24cd755fdbe8e"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.25-14.21.46/clojure-lsp-native-macos-amd64.zip"
      sha256 "87e969a1333e8c35a69600731ba64db26fc5abc337aaba172396f12e4c885660"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.25-14.21.46/clojure-lsp-native-linux-amd64.zip"
      sha256 "8ed93dc448e48ae2f3457b2f53cf27428a47dd6de0c1929a1797faa77eb6751f"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.25-14.21.46/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "c191345074bcbec48f3edc14a86a422ab0bc70a20238d6797a4cf5dc53b83a35"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

