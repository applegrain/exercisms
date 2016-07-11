(ns word-count
  (:require [clojure.string :as str]))

(defn strip-punctuation
  "Removes punctuation"
  [word]
  (re-find (re-pattern "[a-z0-9][a-z]*") word))

(defn word-count
  "Given a phrase it counts the occurrences of each word in that phrase"
  [phrase]
     (reduce
      (fn [hash word]
        (if (contains? hash word)
          (update-in hash [word] inc)
          (assoc hash word 1)))
      (hash-map)
      (remove nil? (map strip-punctuation (map str/lower-case (str/split phrase #" "))))))
