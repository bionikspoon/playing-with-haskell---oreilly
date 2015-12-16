module Intersperse where

sample :: [String]
sample = ["foo", "bar", "baz", "quux"]

intersperse :: Char -> [String] -> String
intersperse _ [] = ""
intersperse seperator (x:xs) =  x ++ [seperator] ++ intersperse seperator xs
