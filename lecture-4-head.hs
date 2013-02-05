-- Lecture 4 (http://shuklan.com/haskell/lec04.html#/0/10)

head :: [a] -> a
head [] = error "Empty list"
head (x:xs) = x
