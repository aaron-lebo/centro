(in main
  fmt)

(const
  (// "Create a huge number by shifting a 1 bit left 100 places."
      "In other words, the binary number that is 1 followed by 100 zeroes.")
  :Big (<< 1 100)
  (// "Shift it right again 99 places, so we end up with 1<<1, or 2.")
  :Small (>> .big 99))

(func need-int (x int) int
  :return (+ (* x 10) 1))

(func need-float (x float64) float64
  :return (* x 0.1))

(func main ()
  (fmt/println (need-int Small))
  (fmt/println (need-float Small))
  (fmt/println (need-float Big)))