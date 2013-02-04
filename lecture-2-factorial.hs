-- Lecture 2 (http://shuklan.com/haskell/lec02.html#/0/22)

facA :: Integer -> Integer
facA 0 = 1
facA x = x * facA (x - 1)

facB :: Int -> Int
facB = facBinteral 1

facBinteral :: Int -> Int -> Int
facBinteral acc 1 = acc
facBinteral acc x = facBinteral (acc * x) (x - 1)
