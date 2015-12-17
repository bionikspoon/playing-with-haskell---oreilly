module Excercises where

import           Data.Maybe

s0 :: [t]
s0 = []

s1 :: [Int]
s1 = [1]

sn :: [Int]
sn = [1..5]

st :: String
st = "The fox jumps over the dog."

isSpace :: Char -> Bool
isSpace c = c == ' '

safeHead:: [a] -> Maybe a
safeHead [] = Nothing
safeHead [x] = Just x
safeHead (x:_) = Just x

safeTail:: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail [_] = Just []
safeTail (_:xs) = Just xs

safeLast:: [a] -> Maybe a
safeLast [] = Nothing
safeLast [x] = Just x
safeLast (_:xs) =  safeLast xs


safeInit:: [a] -> Maybe [a]
safeInit [] = Nothing
safeInit [_] = Just []
safeInit (x:xs) = Just (x : fromMaybe xs (safeInit xs))

splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith _ [] = []
splitWith f (x:xs)
    | f x = splitWith f xs
    | otherwise = item : splitWith f items
    where (item, items) = break f (x:xs)
