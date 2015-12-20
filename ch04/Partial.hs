module Partial where

import           Data.List

isInAny :: Eq a => [a] -> [[a]] -> Bool
isInAny needle = any inSequence
    where inSequence s = needle `isInfixOf` s

isInAny' :: Eq a => [a] -> [[a]] -> Bool
isInAny' needle haystack = any (\s -> needle `isInfixOf` s) haystack
