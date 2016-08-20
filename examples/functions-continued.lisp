(in main
  fmt)

(func add (x y int) int
  :return (+ x y))

(func main () nil
  (fmt.Println (add 42 13)))

