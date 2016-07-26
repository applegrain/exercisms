(ns word-count
  (:require [clojure.string :as str]))

(defn strip-punctuation
  "Removes punctuation"
  [word]
  (re-find (re-pattern "[a-z0-9][a-z]*") word))

(defn categorize
  "Counts the words"
  [hash word]
  (update-in hash [word] (fnil inc 0)))

(defn word-count
  "Given a phrase it counts the occurrences of each word in that phrase"
  [phrase]
     (reduce categorize (hash-map)
      (->> (str/split phrase #" ")
           (map str/lower-case)
           (map strip-punctuation)
           (remove nil?))))
