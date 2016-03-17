module Main where

concatList :: [[a]] -> [a]
concatList = foldr (++) []

main = do
    print . show $ foldr (++) [] [[1,2],[],[3]]
    print . show $ concatList [[1,2],[],[3]]
