module Excercises where


safeHead:: [a] -> Maybe a
safeHead [] = Nothing
safeHead [x] = Just x
safeHead (x:_) = Just x

safeTail:: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail [x] = Just [x]
safeTail (_:xs) = Just xs

safeLast:: [a] -> Maybe a
safeLast [] = Nothing
safeLast [x] = Just x
safeLast (_:xs) =  safeLast xs


safeInit:: [a] -> Maybe [a]
safeInit [] = Nothing
safeInit [x] = Just [x]
safeInit  (x:xs)  = x: safeInit xs
