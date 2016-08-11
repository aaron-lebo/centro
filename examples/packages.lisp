(in-package :go.packages)

(in main
    fmt
    math/rand)

(func main ()
  (fmt/println "My favorite number is" (rand/intn 10)))

