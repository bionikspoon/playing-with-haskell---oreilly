module Map where

import           Data.Char

square :: [Double] -> [Double]
square (x:xs)   = x * x : square xs
square []       = []

square' :: [Double] -> [Double]
square' xs = map squareOne xs
    where squareOne x = x * x

upperCase :: String -> String
upperCase (x:xs)    = toUpper x : upperCase xs
upperCase []        = []

map' :: (a -> b) -> [a] -> [b]
map' f (x:xs)   = f x : map' f xs
map' _ _        = []
