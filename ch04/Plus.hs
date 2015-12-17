module Plus where

data a `Pair` b = a `Pair` b
                  deriving Show
plus :: Num a => a -> a -> a
a `plus` b = a + b

foo :: Pair Int Int
foo = Pair 1 2

bar :: Pair Bool String
bar = True `Pair` "quux"
