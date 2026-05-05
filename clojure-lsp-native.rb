class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2026.05.05-12.58.26"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.05.05-12.58.26/clojure-lsp-native-macos-aarch64.zip"
      sha256 "8b54c19ce3aaf9924b495a9bbf88f2827045a1fac7faaeabddc27dcb96529947"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.05.05-12.58.26/clojure-lsp-native-macos-amd64.zip"
      sha256 "4b636b7f2686407f152a06d0d0a1567b193c792e9b8bcf1e95d1abda53b3aa1b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.05.05-12.58.26/clojure-lsp-native-linux-amd64.zip"
      sha256 "b456da0fd1db61999ca6ad30648dcc97aef805029040055798fc8248238a30d0"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2026.05.05-12.58.26/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "905234bf25c32e688a9cd693116d001bf570fcf178a0c65defeacf79e67ed484"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

