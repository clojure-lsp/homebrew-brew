class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.02.26-23.46.05"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.02.26-23.46.05/clojure-lsp-native-macos-aarch64.zip"
      sha256 "c25fcd27d90dfb34acf84c20e4b093b721226d5d97fcf52734894f85ccf91af7"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.02.26-23.46.05/clojure-lsp-native-macos-amd64.zip"
      sha256 "011ed0f3136f1dc81381613461f816805b77224b300a982454b94f338027168d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.02.26-23.46.05/clojure-lsp-native-linux-amd64.zip"
      sha256 "39be455d4111db5bd06e633b9e851263ff720a9c885da045683fe649b85165a8"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.02.26-23.46.05/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "8bac1bed475f906fa8bf4d816056dba9378fd70f4c3b161cb85c59474f439818"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

