module Palindrome where


palindrome :: [a] -> [a]
palindrome xs = xs ++  reverse xs

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = False
isPalindrome xs
    | odd $ length xs = False
    | otherwise = xs == reverse xs
