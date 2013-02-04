-- Lecture 3 (http://shuklan.com/haskell/lec03.html#/0/21)

import Data.Char (chr, ord)

cipher :: [Char] -> Int -> [Char]
cipher [] _ = []
cipher xs 0 = xs
cipher (x:xs) n = (rotate x n) : (cipher xs n)

rotate :: Char -> Int -> Char
rotate x n = chr ((ord x) + n)
