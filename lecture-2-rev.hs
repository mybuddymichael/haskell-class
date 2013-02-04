-- Lecture 2 (http://shuklan.com/haskell/lec02.html#/0/14)

rev :: [a] -> [a]
rev [] = []
rev xs = last xs : rev (init xs)
