(in-package :go.named-results)

(in main
    fmt)

(func split (sum int) (x y int)
  (! :x (/ (* sum 4) 9)
     :y (- sum x))
  :return)

(func main ()
  (fmt/println (split 17)))

