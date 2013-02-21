-- Lecture 6 (http://shuklan.com/haskell/lec06.html#/0/20)

import Data.Char

passwordIsStrong :: String -> Bool
passwordIsStrong s = all (== True) [ length s >= 15
                                   , any isUpper s
                                   , any isDigit s
                                   ]
