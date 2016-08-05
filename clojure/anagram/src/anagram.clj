(ns anagram
  (:require [clojure.string :as str]))

(defn anagrams-for
  "Returns all anagrams for a given word"
  [word, list]
  (filter
    (fn [w]
      (and (= (sort (str/lower-case w)) (sort (str/lower-case word)))
           (not= (str/lower-case w) (str/lower-case word)))) 
    list))
