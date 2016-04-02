module Main where

import Data.Char

data Token = Number Int | Plus | Minus | LeftBrace | RightBrace
    deriving (Eq, Show)

asToken :: String -> Maybe Token
asToken s | s == ""  = Nothing
          | s == "+" = Just Plus
          | s == "-" = Just Minus
          | s == "(" = Just LeftBrace
          | s == ")" = Just RightBrace
          | (length . filter isDigit $ s) /= length s = Nothing
          | otherwise = Just . Number . stringToInt $ s
            where
                pairToDec (x, y) = 10^x * y
                stringToInt = foldr (+) 0 . map pairToDec . map (\(x,y) -> (x, digitToInt y)) . zip [0..] . reverse

tokenize :: String -> Maybe [Token]
tokenize input =
    if length filtered == length res
    then Just $ (map (\(Just t) -> t)) res
    else Nothing
    where
        filtered = filter (\mb -> case mb of {Just a -> True; Nothing -> False}) $ res

        res = tokenizeAll input
        tokenizeAll = map asToken . splitBy ' '

        splitBy :: Char -> String -> [String]
        splitBy d s = reverse res
            where
                (res, delimiter, str) = f ([], d, s)
                f (container, delimiter, str) | str == "" = (container, delimiter, str)
                                              | otherwise = f (part:container, delimiter, tail)
                                                    where
                                                        isDelimiter = \c -> c /= delimiter
                                                        frstSpcPos = length . takeWhile isDelimiter $ str
                                                        (part, tail) =
                                                            if frstSpcPos == length str
                                                            then (str, "")
                                                            else (\(xs, y:ys) -> (xs, ys)) . splitAt frstSpcPos $ str

main = do
    undefined
