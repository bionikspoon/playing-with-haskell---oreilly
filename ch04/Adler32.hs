module Adler where

import           Data.Bits (shiftL, (.&.), (.|.))
import           Data.Char (ord)

base :: Int
base = 65521

adler32 :: String -> Int
adler32 = adler32' 1 0
    where adler32' a b (y:ys)   =
            let a' = (a + (ord y .&. 0xff)) `mod` base
                b' = (a' + b) `mod` base
            in  adler32' a' b' ys
          adler32' a b _        = (b `shiftL` 16) .|. a


adler32_foldl :: String -> Int
adler32_foldl xs =
    let (a, b) = foldl step (1, 0) xs
    in (b `shiftL` 16) .|. a
    where step (a, b) y = let a' = a + (ord y .&. 0xff)
                          in (a' `mod` base, (a' + b) `mod` base)
