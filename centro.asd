;;;; centro.asd

(asdf:defsystem #:centro
  :description "lisp to go transpiler"
  :author "Aaron Lebo <aaron.matthew.lebo@gmail.com>"
  :license "ISC"
  :serial t
  :depends-on (:cl-fad :cl-ppcre)
  :components ((:file "package")
               (:file "centro")))

