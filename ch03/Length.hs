module Length where

length' :: [a] -> Int
length' (_:xs) = 1 + length' xs
length' [] = 0

mean :: Fractional a => [a] -> a
mean xs =  sum xs / fromIntegral (length xs)
