class ClojureLspNative < Formula
  desc "Language Server (LSP) for Clojure"
  homepage "https://github.com/clojure-lsp/clojure-lsp"
  version "2022.12.09-15.51.10"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.12.09-15.51.10/clojure-lsp-native-macos-aarch64.zip"
      sha256 "200bea5ece7a62ddda8c0b6c43d40be00c7363e532a92338a633877651e83120"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.12.09-15.51.10/clojure-lsp-native-macos-amd64.zip"
      sha256 "23b9c40ee223b31b6af726fd8c9838a5db10310cdd073d2dc465c8d681916721"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.12.09-15.51.10/clojure-lsp-native-linux-amd64.zip"
      sha256 "2b26b4009bc40dcdca124a22ff76d96d76facfb8b8c9f1ba26fe94dab96c02e0"
    else
      url "https://github.com/clojure-lsp/clojure-lsp/releases/download/2022.12.09-15.51.10/clojure-lsp-native-static-linux-amd64.zip"
      sha256 "4f77e05ac178108d219eb3197af412f116982b96cd402f4b960f57a5cb5c0dd0"
    end
  end

  def install
    bin.install "clojure-lsp"
  end
end

