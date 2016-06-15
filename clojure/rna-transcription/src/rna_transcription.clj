(ns rna-transcription
  (:require [clojure.string :as str]))

(def rna-to-dna {"C" "G" "G" "C" "A" "U" "T" "A"})

(defn to-rna
  "Returns the RNA complement of given DNA strand"
  [strand]
  (let [split-strands (str/split strand #"")]
    (str/join (map rna-to-dna split-strands))))
