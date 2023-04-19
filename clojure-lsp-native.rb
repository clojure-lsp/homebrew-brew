class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2023.04.19-12.43.29"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.04.19-12.43.29/clojure-lsp-native-macos-aarch64.zip"
      sha256 "e079857961540311eb68f9a7d790951a6ec0666a98ecc2d39b0a92b595cffe2a"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.04.19-12.43.29/clojure-lsp-native-macos-amd64.zip"
      sha256 "7c2f6754be44f82a053a3162ca3f4a98eecba07e51b9b68c10e8ccaf2e5541bf"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.04.19-12.43.29/clojure-lsp-native-linux-amd64.zip"
      sha256 "69c1c9937eaf8c8064fc02f79b39acce1db2933bea6de495fcce89ea9f55afb6"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2023.04.19-12.43.29/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "386395781dba4f9eb58fad767aea2b3304f3d2e91b8db3e62277c9ad4383d553"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

