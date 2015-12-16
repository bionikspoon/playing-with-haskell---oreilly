module Tree where

data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving Show

simpleTree :: Tree String
simpleTree = Node "parent"  (Node "left child"  Empty Empty)
                            (Node "right child" Empty Empty)
height :: Tree a -> Int
height (Node _ Empty    Empty) = 0
height (Node _ left     Empty) = sum (1: height left:[])
height (Node _ Empty    right) = sum (1: height right:[])
height (Node _ left     right) = sum (1: height left:[]) `max` sum (1: height right:[])


sample1 :: Tree String
sample1 = Node "x" Empty Empty

sample2 :: Tree String
sample2 = Node "x" Empty (Node "y" Empty Empty)
sample3 :: Tree String
sample3 = Node "x"
            Empty
            (Node "y"
                (Node "z"
                    Empty
                    (Node "a"
                        Empty
                        (Node "b"
                            Empty
                            Empty
                        )
                    )
                )
                Empty
            )
