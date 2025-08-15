class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.08.15-17.11.38"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.15-17.11.38/clojure-lsp-native-macos-aarch64.zip"
      sha256 "240f62e82b2832f2ce91b3dac9a8526300d1c2b1585b2757fc006fcb10e5b43c"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.15-17.11.38/clojure-lsp-native-macos-amd64.zip"
      sha256 "15c252f89883fc16507bc414ae969cb53c5e8f320ecd2bbc96144838af669480"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.15-17.11.38/clojure-lsp-native-linux-amd64.zip"
      sha256 "9261319c778400602899bd4d8d6b1ed82964fbcef4b7eaf2664f725f0d19d06a"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.08.15-17.11.38/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "08e9a8144277fbb9897fda5827715f988d1847a1e9dd35443c50d112d6057f9c"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

