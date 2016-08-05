(ns anagram
  (:require [clojure.string :as str]))

(defn anagrams-for
  "Returns all anagrams for a given word"
  [word, list]
   (filter
    (fn [w]
      (let [original (str/lower-case w)
            test (str/lower-case word)]
       (and (= (sort original) (sort test))
            (not= original test))))
    list))
