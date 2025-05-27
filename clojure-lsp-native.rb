class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.05.27-13.56.57"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.05.27-13.56.57/clojure-lsp-native-macos-aarch64.zip"
      sha256 "77d18087b4045e09f1e44df7754b550228df591e19f351638d456c9ef604e881"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.05.27-13.56.57/clojure-lsp-native-macos-amd64.zip"
      sha256 "5b0238e108d40c9550324416dc89cf7c5a47fe656ac0888f588ef05d6b5faad6"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.05.27-13.56.57/clojure-lsp-native-linux-amd64.zip"
      sha256 "6088d93c4b5e8ce6ec39356eaf708fa7573275a1ad559da6f498ec8358f8d6d3"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.05.27-13.56.57/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "51250a7c41b60a60b0b49dd69bb69795339081f7cc23c7493554b0108983e41c"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

