module SuffixTree where

import           Data.Char
import           Data.List

suffixes :: [a] -> [[a]]
suffixes xs@(_:xs') = xs : suffixes xs'
suffixes _ = []


suffixes2 :: [a] -> [[a]]
suffixes2 xs = init (tails xs)

suffixes3 :: [a] -> [[a]]
suffixes3 = compose init tails

-- skipping 4
suffixes5 :: [a] -> [[a]]
suffixes5 = init . tails

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g x = f (g x)

capCount :: String -> Int
capCount = length . filter (isUpper . head) . words
