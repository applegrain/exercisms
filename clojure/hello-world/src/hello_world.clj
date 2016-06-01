(ns hello-world)

(defn hello ([] (hello "World"))
  ([name]
    (str "Hello, "
      (if (= name "Lovisa") "Myself" name) "!")
    ))
