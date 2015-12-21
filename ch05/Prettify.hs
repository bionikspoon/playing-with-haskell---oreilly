module Prettify (
    Doc, char, double, empty, fsep, hcat, line, punctuate, text, (<>)
) where

data Doc    = Empty
            | Char Char
            | Text String
            | Line
            | Concat Doc Doc
            | Union Doc Doc
              deriving (Show, Eq)

empty :: Doc
empty = Empty

char :: Char -> Doc
char = Char

text :: String -> Doc
text "" = Empty
text s  = Text s

double :: Double -> Doc
double d = text (show d)

line :: Doc
line = Line

(<>) :: Doc -> Doc -> Doc
Empty <> y  = y
x <> Empty  = x
x <> y      = x `Concat` y

hcat :: [Doc] -> Doc
hcat = fold (<>)

fsep :: [Doc] -> Doc
fsep = fold (</>)


punctuate :: Doc -> [Doc] -> [Doc]
punctuate _ []      = []
punctuate _ [d]     = [d]
punctuate p (d:ds)  = (d <> p) : punctuate p ds

flatten :: Doc -> Doc
flatten (x `Concat` y)  = flatten x `Concat` flatten y
flatten Line            = Char ' '
flatten (x `Union` _)   = flatten x
flatten other           = other

fold :: (Doc -> Doc -> Doc) -> [Doc] -> Doc
fold f = foldr f empty

group :: Doc -> Doc
group x = flatten x `Union` x

softline :: Doc
softline = group line

(</>) :: Doc -> Doc -> Doc
x </> y = x <> softline <> y
