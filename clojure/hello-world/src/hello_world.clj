(ns hello-world)

(defn hello
  ([] (hello "World"))
  ([name]
    (if (= name "Lovisa") (def n "Myself") (def n name))
            (str "Hello, " n "!")))