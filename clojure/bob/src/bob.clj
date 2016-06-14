(ns bob
  (:require [clojure.string :as str]))

(defn is-all-uppercase
  "Returns true if all characters are uppercase"
  [expression]
  (= expression (str/upper-case expression)))

(defn is-silence
  "Returns true if the expression is empty"
  [expression]
  (str/blank? expression))

(defn is-question
  "Returns true if the expression is a question"
  [expression]
  (str/ends-with? expression "?"))

(defn response-for
  "Returns a response given the expression"
  [expression]
  (cond
    (is-silence expression) "Fine. Be that way!"
    (is-all-uppercase expression) "Whoa, chill out!"
    (is-question expression) "Sure."
    :else "Whatever."))
