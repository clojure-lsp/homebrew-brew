# clojure-lsp on brew

## How to use this tap

```shell
# If you have `clojure-lsp` from `homebrew-core`, remove it before using this formula
# That formula is deprecated and uses an outdated and non-native clojure-lsp version
brew remove clojure-lsp

# Then, use this tap
brew install clojure-lsp/brew/clojure-lsp-native

# For linux, by default it will install the static binary, you can install the dynamic one with:

brew install clojure-lsp/brew/clojure-lsp-native --with-dynamic
```

## development

To update the formulas run `bb -o render.clj --version "<new-version>" --mac-arm-sha "<sha>" --mac-amd-sha "<sha>" --linux-sha "<sha>" --static-linux-sha "<static-linux-sha>" > clojure-lsp-native.rb` 
