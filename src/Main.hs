module Main where

maybeToList :: Maybe a -> [a]
maybeToList m = case m of Just a  -> [a]
                          Nothing -> []

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (x:xs) = Just x

main = do
    undefined
