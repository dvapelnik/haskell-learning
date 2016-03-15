
module Main where

import Data.Char

delAllUpper :: String -> String
delAllUpper = unwords . filter (\s -> s /= map (\c -> toUpper c) s) . words

main = do
    print . show $ delAllUpper "Abc IS not ABC"