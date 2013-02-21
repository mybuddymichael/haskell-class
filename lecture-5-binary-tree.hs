-- Lecture 5 (http://shuklan.com/haskell/lec05.html#/0/23)

data Tree a = EmptyTree
            | Tree a (Tree a) (Tree a)

sumOfTree :: Num t => Tree t -> t
sumOfTree EmptyTree = 0
sumOfTree (Tree i left right) = sum [ i
                                    , sumOfTree left
                                    , sumOfTree right
                                    ]
