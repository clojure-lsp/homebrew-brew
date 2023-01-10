#!/usr/bin/env bb

(require '[clojure.string :as str]
         '[clojure.tools.cli :refer [parse-opts]])

(def cli-options
  [[nil "--mac-arm-sha SHA" "The sha256 of the mac aarch64 artifact"
    :default ""
    :missing "--mac-arm-sha must be specified"]
   [nil "--mac-amd-sha SHA" "The sha256 of the mac amd64 artifact"
    :default ""
    :missing "--mac-amd-sha must be specified"]
   [nil "--linux-sha SHA" "The sha256 of the linux artifact"
    :default ""
    :missing "--linux-sha must be specified"]
   [nil "--static-linux-sha SHA" "The sha256 of the static linux artifact"
    :default ""
    :missing "--static-linux-sha must be specified"]
   [nil "--version VERSION" "The new version to publish"
    :default ""
    :missing "--linux-sha must be specified"]
   [nil "--template" "Path of the template file"
    :default "clojure-lsp-native.rb.tmpl"]])


(defn render
  [{:keys [version linux-sha static-linux-sha mac-amd-sha mac-arm-sha template]}]
  (-> (slurp template)
      (str/replace #"<version>" version)
      (str/replace #"<linux-sha>" linux-sha)
      (str/replace #"<static-linux-sha>" static-linux-sha)
      (str/replace #"<mac-arm-sha>" mac-arm-sha)
      (str/replace #"<mac-amd-sha>" mac-amd-sha)))

(-> (parse-opts *command-line-args* cli-options)
    :options
    render)

