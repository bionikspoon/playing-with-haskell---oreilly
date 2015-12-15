module NotLast where

secondToLast :: [a] -> a
secondToLast [] = error "No elements"
secondToLast [_] = error "Not enough elements"
secondToLast xs = last ( init xs )
