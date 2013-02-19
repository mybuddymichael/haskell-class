-- Lecture 5 (http://shuklan.com/haskell/lec05.html#/0/23)

data Tree = Tree Int Tree Tree
          | EmptyTree

sumOfTree :: Tree -> Int
sumOfTree EmptyTree = 0
sumOfTree (Tree i left right) = sum [ i
                                    , sumOfTree left
                                    , sumOfTree right
                                    ]
