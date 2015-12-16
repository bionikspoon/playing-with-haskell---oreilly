module Basics where

import           Data.List
import           Test.QuickCheck

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort lhs ++ [x] ++ rhs
    where   lhs = filter (< x) xs
            rhs = filter (>= x) xs

prop_idempotent xs = qsort (qsort xs) == qsort xs
