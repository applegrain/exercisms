(ns hello-world)

(defn hello ([] (hello "World"))
  ([name]
    (let [name (if (= name "Lovisa") "Myself" name)]
      (str "Hello, " name "!"))))
