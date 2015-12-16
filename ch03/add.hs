module Add where

not' :: Bool -> Bool
not' True = False
not' False = True

sum' :: Num a => [a] -> a
sum' (x:xs) = x + sum' xs
sum' [] = 0
