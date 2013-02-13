-- Lecture 5 (http://shuklan.com/haskell/lec05.html#/0/23)

data Tree = Tree { root :: Node
                 } deriving (Show)

data Node = Node { value :: Int
                 , left :: Maybe Node
                 , right :: Maybe Node
                 } deriving (Show)

sumOfTree :: Tree -> Int
sumOfTree = sumOfNode . Just . root

sumOfNode :: Maybe Node -> Int
sumOfNode Nothing = 0
sumOfNode (Just n) = sum [ value n
                         , sumOfNode $ left n
                         , sumOfNode $ right n
                         ]
