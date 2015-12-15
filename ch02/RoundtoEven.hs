module Round where

isOdd :: Int -> Bool
isOdd n = mod n 2 == 1

roundToEven :: Int -> Int
roundToEven n
    | isOdd n = makeEven n
    | otherwise = n
    where makeEven a = if a < 0
                       then a - 1
                       else a + 1
