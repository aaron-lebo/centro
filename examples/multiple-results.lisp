(in main
  fmt)

(func swap (x y string) (string string)
  (return y x))

(func main () nil
  (be :a :b (swap "hello" "world"))
  (fmt.Println a b))
