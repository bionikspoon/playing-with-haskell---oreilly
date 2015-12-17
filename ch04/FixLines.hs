import           System.Environment (getArgs)

interactWith :: (String -> String) -> FilePath -> FilePath -> IO()
interactWith function inputFile outputFile = do
    input <- readFile inputFile
    writeFile outputFile (function input)

main :: IO()
main = mainWith myFunction
    where mainWith function = do
            args <- getArgs
            case args of
                [input, output] -> interactWith function input output
                _ ->  putStrLn "error: exactly two arguments needed"

          myFunction = fixLines

splitLines :: String -> [String]
splitLines [] = []
splitLines cs =
  let (prefix, suffix) = break isLineTerminator cs
  in prefix : case suffix of
      ('\r':'\n':rest)    -> splitLines rest
      ('\n':rest)         -> splitLines rest
      ('\r':rest)         -> splitLines rest
      _                   -> []

isLineTerminator :: Char -> Bool
isLineTerminator char = char == '\r' || char == '\n'

fixLines :: String -> String
fixLines input = unlines (splitLines input)
