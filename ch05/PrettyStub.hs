module PrettyStub where

data Doc = ToBeDefined
           deriving (Show)

-- string :: String -> Doc
-- string _ = undefined

text :: String -> Doc
text _ = undefined

double :: Double -> Doc
double _ = undefined

(<>) :: Doc -> Doc -> Doc
_ <> _ = undefined

char :: Char -> Doc
char _ = undefined

hcat :: [Doc] -> Doc
hcat _ = undefined

-- oneChar :: Char -> Doc
-- oneChar _ = undefined

-- hexEscape :: t -> Doc
-- hexEscape _ = undefined

fsep :: [Doc] -> Doc
fsep _ = undefined
