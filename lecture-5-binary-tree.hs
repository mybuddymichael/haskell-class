-- Lecture 5 (http://shuklan.com/haskell/lec05.html#/0/23)

import Data.Maybe

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
sumOfNode (Just n) = sum [leftSum, (value n), rightSum]
  where
    leftSum  = sumOfNode . left $ n
    rightSum = sumOfNode . right $ n
