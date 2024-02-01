class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2024.02.01-11.01.59"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.02.01-11.01.59/clojure-lsp-native-macos-aarch64.zip"
      sha256 "1b5eafad57f7ad7a5a6b27f8dc86dde6395c5b91b78c366747c7650a71f50ae5"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.02.01-11.01.59/clojure-lsp-native-macos-amd64.zip"
      sha256 "252d81ea9bb8aac6796047e0dc42bc9c432cc675e8c1ac6b6bc7d3bcdb23b327"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.02.01-11.01.59/clojure-lsp-native-linux-amd64.zip"
      sha256 "48b4e2547b5d80349f2750e242de9f68aa789372f5f4154f263107409300c6b9"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2024.02.01-11.01.59/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "d1f7033ee93584c847dfa490d11ebd58502780ed1f5047415ed583920e66e479"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

