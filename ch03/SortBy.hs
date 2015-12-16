module SortBy where
sortBy :: [[a]] -> [[a]]
sortBy [] = []
sortBy (x:xs) =
    let smallerSorted = sortBy [a | a <- xs, length a <= length x]
        biggerSorted = sortBy [a | a <- xs, length a > length x]
    in smallerSorted ++ [x] ++ biggerSorted

sample :: [[Int]]
sample =  [[1..6], [1..2], [1..5], [1..3]]
