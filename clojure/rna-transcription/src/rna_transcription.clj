(ns rna-transcription
  (:require [clojure.string :as str]))

(def rna-to-dna {"C" "G" "G" "C" "A" "U" "T" "A"})

(defn is-dna
  [dna]
  (contains? rna-to-dna (str dna)))

(defn is-valid-dna-strand?
  [strand]
    (every? is-dna strand))

(defn to-rna
  "Returns the RNA complement of given DNA strand"
  [strand]
  (if (is-valid-dna-strand? strand)
    (->> (str/split strand #"")
         (map rna-to-dna)
         (str/join))
    (throw (Exception. "Strand is not valid."))))
