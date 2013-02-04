-- Lecture 3 (http://shuklan.com/haskell/lec03.html#/0/20)

zipTogether :: [a] -> [b] -> [(a,b)]
zipTogether _ [] = []
zipTogether [] _ = []
zipTogether (x:xs) (y:ys) = (x,y) : zipTogether xs ys
