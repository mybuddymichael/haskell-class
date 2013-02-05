-- Lecture 4 (http://shuklan.com/haskell/lec04.html#/0/9)

isPal :: Eq a => [a] -> Bool
isPal ss = ss == (reverse ss)
