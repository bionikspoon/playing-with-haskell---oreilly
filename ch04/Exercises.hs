module Excercises where

import           Data.Maybe

s0 :: [t]
s0 = []
s1 :: [Int]
s1 = [1]
sn :: [Int]
sn = [1..5]


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
