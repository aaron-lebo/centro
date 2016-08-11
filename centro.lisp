(in-package #:centro)

(setf (readtable-case *readtable*) :invert)

(defun << (str &rest args)
  (apply #'format t (concatenate 'string str) args))

(defun call (callee &rest args)
  (to-go callee) (<< "(")
  (loop :for arg :in args :do
    (to-go arg) (<< ","))
  (<< ")"))

(defun const (&rest args)
  (<< "const(")
  (loop :for (k v) :on args :while v :do
    (to-go k) (<< "=") (to-go v))
  (<< ")~%"))

(defun func (&rest args)
  (<< "func ")
  (if (symbolp (first args))
      (to-go (pop args)))
  (<< "(")
  (loop :for (param . rest) :on (pop args) :do
    (to-go param)
    (if (eq 'int (first rest))
        (<< " ")
        (<< ",")))
  (<< ")")
  (if (symbolp (first args))
      (to-go (pop args)))
  (<< "{~%")
  (loop :for statement :in args :do
    (to-go statement)
    (if (eq statement :return)
        (<< " ")
        (<< "~%")))
  (<< "}~%"))

(defun in (pkg &rest body)
  (<< "~(package ~a~%import(~{\"~a\";~})~)~%" pkg body))

(defun math (op left right)
  (<< "~a ~a ~a" left op right))

(defun to-go (node)
  (cond
    ((or (numberp node) (symbolp node))
     (<< "~a" node))
    ((stringp node)
     (<< "\"~a\"" node))
    ((consp node)
     (case (first node)
       (+ (apply #'math node))
       (- (apply #'math node))
       (const (apply #'const (rest node)))
       (func (apply #'func (rest node)))
       (in (apply #'in (rest node)))
       (t (apply #'call node))))))

(defun read! (path)
  (if (string= (pathname-type path) "lisp")
      (with-open-file (file path)
        (loop :for exp = (read file nil) :while exp :do
          (to-go exp)))))

(defun main (argv)
  (in-package :centro)
  (setf path (first argv))
  (or (read! path) (cl-fad:walk-directory path #'read!)))
