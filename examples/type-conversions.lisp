(in main
  fmt
  math)

(func main () nil
  (var
    :x :y int 3 4
    :f float64 (math.Sqrt (float64 (+ (* x x) (* y y))))
    :z uint (unint f))
  (fmt.Println x y z))
