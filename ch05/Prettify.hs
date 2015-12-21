module Prettify (
    Doc, char, double, fsep, hcat, punctuate, text, (<>)
) where

import           PrettyStub


punctuate :: Doc -> [Doc] -> [Doc]
punctuate _ []      = []
punctuate _ [d]     = [d]
punctuate p (d:ds)  = (d <> p) : punctuate p ds
