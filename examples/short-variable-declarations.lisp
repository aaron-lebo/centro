(in-package :go.short-variable-declarations)

(in main
    fmt)

(func main ()
  (var :i :j int 1 2)
  (@ :k 3)
  (@ :c :python :java true false "no!")
  (fmt/println i j k c python java))
