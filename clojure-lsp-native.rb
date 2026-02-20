class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2026.02.20-16.08.58"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.02.20-16.08.58/clojure-lsp-native-macos-aarch64.zip"
      sha256 "a14d4db074f665378214e2dc888472e186c228dfa065c777b0534bfda5571669"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.02.20-16.08.58/clojure-lsp-native-macos-amd64.zip"
      sha256 "5507434c27104ab816e096d3336d8191641de8a65b57d76afb585d07167a3cf2"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.02.20-16.08.58/clojure-lsp-native-linux-amd64.zip"
      sha256 "52e8bf4fd4cf171df0a3077c8bb5a3bf598d4c621e94b4876dab943a61267309"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.02.20-16.08.58/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "c7aaa131de57b7d998385202df191a46d46964131bb5e5fa37aed226af022550"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

