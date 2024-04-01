class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2024.03.31-19.10.13"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.31-19.10.13/clojure-lsp-native-macos-aarch64.zip"
      sha256 ""
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.31-19.10.13/clojure-lsp-native-macos-amd64.zip"
      sha256 "ec8468a2aef17ee365c0d4f79a069f441c5fe9d466286929af012060dbf68a35"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.31-19.10.13/clojure-lsp-native-linux-amd64.zip"
      sha256 "3d860d25e7c354198fa9c975ba01bfb27d1aba42d8e334f0e529bbfdc5c1a5e6"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.03.31-19.10.13/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "6c1b59e11322771ff3248286fcc99ba97605dba9a983f17360dd0b3ebc07695d"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

