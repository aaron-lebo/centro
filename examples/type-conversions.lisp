(in-package :go.type-conversions)

(in main
    fmt
    math)

(func main ()
  (var
    :x :y int 3 4
    :f float64 (math/sqrt (float64 (+ (* x x) (* y y))))
    :z uint (unint f))
  (fmt/println x y z))
