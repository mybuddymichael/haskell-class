-- Lecture 5 (http://shuklan.com/haskell/lec05.html#/0/23)

data Tree = Tree Node deriving (Show)

data Node = Node { value :: Int
                 , left :: Maybe Node
                 , right :: Maybe Node
                 } deriving (Show)
