-- Lecture 4 (http://shuklan.com/haskell/lec04.html#/0/19)

convert :: (Double, String) -> (Double, String)
convert (x,y)
    | y == "m"   = (x * yardsPerMeter, "yd")
    | y == "yd"  = (x / yardsPerMeter, "m")
    | y == "L"   = (x * gallonsPerLiter, "gal")
    | y == "gal" = (x / gallonsPerLiter, "L")
    | y == "kg"  = (x * poundsPerKilogram, "lb")
    | y == "lb"  = (x / poundsPerKilogram, "kg")
  where
    yardsPerMeter = 1.09361
    gallonsPerLiter = 0.264172
    poundsPerKilogram = 2.20462
