module Drop where

drop' :: Int -> [a] -> [a]
drop' n xs = if n <= 0 || null xs
             then xs
             else drop' ( n - 1 ) ( tail xs)
