module Dlts where

import           Data.List (isPrefixOf)
--
-- dlts :: String -> [String]
-- dlts = foldr step . lines
--     where step l ds
--             | "#define DLT_" `isPrefixOf` l = secondWord l : ds
--             | otherwise
--           secondWord = head .tail . words
