(in-package :go.type-inference)

(in main
    fmt)

(func main ()
  (! :v 42) (// "change me!")
  (fmt/printf "v is of type %T\n" v))
