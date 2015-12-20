module Sum where

sum' :: Num a => [a] -> a
sum' xs = sum'' 0 xs
    where sum'' acc (y:ys)  = sum'' (acc + y) ys
          sum'' acc _       = acc

foldlSum :: Num a => [a] -> a
foldlSum = foldl (+) 0
