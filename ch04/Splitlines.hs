splitLines :: String -> [String]
splitLines [] = []
splitLines cs =
    let (prefix, suffix) = break isLineTerminator cs
    in prefix : case suffix of
        ('\r':'\n':rest)    -> splitLines rest
        ('\n':rest)         -> splitLines rest
        ('\r':rest)         -> splitLines rest
        otherwise           -> []

isLineTerminator char = char == '\r' || char == '\n'
