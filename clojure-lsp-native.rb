class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2025.06.13-20.45.44"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.06.13-20.45.44/clojure-lsp-native-macos-aarch64.zip"
      sha256 "6c26142191cc1c98118eb5207fb92277f8b3023530a28a8ba6d5c46aba767a36"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.06.13-20.45.44/clojure-lsp-native-macos-amd64.zip"
      sha256 "4056a925abe03e60691ea311df3492eeb74ed5867a687f4c8ef33083f9192a32"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.06.13-20.45.44/clojure-lsp-native-linux-amd64.zip"
      sha256 "0da5ccdffbc392f289221eea9a1b220daeb165d46f915d4d39172ebf0aa14430"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2025.06.13-20.45.44/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "b719fdd8a3b9a4e6ded6b61ddcc58ac405ddb4075d72e08f950326f24d4fe143"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

