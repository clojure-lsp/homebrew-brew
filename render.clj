#!/usr/bin/env bb

(require '[clojure.tools.cli :refer [parse-opts]]
         '[clojure.string :as str])

(def cli-options
  [[nil "--mac-sha SHA" "The sha256 of the mac artifact"
    :default ""
    :missing "--mac-sha must be specified"]
   [nil "--linux-sha SHA" "The sha256 of the linux artifact"
    :default ""
    :missing "--linux-sha must be specified"]
   [nil "--version VERSION" "The new version to publish"
    :default ""
    :missing "--linux-sha must be specified"]
   [nil "--template" "Path of the template file"
    :default "clojure-lsp-native.rb.tmpl"]])


(defn render
  [{:keys [version linux-sha mac-sha template]}]
  (-> (slurp template)
      (str/replace #"<version>" version)
      (str/replace #"<linux-sha>" linux-sha)
      (str/replace #"<mac-sha>" mac-sha)))

(-> (parse-opts *command-line-args* cli-options)
    :options
    render)

