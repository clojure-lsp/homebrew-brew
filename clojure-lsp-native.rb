class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.03.27-18.23.58"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.27-18.23.58/clojure-lsp-native-macos-aarch64.zip"
      sha256 "e13bffb41618e3d311b85feead5a59b79dd7a22ec88c67ce458bdf42ac660917"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.27-18.23.58/clojure-lsp-native-macos-amd64.zip"
      sha256 "c1735b011e799e19b14c8c6ec62ce0d352310d2f291fc7d94691d05f60831b35"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.27-18.23.58/clojure-lsp-native-linux-amd64.zip"
      sha256 "249057db3d205e302b1b4edabbddda940385920976aecc9790f694a7715d8d7e"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.03.27-18.23.58/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "20a87c33fdc268efd09d4865f0f0fd43a2360f4f98de9aea9ea3720e655c18f1"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

