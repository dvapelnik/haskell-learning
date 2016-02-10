module Main where

import Data.List
import Data.String.Utils

main = do
    print $ (++) "127.0.0.1" ":8080"
    print $ "127.0.0.1" ++ ":8080"
    print $ (+) 1 2
    print $ 1 + 2
    print $ if ".com" `isSuffixOf` "google.com" then ".com is suffix of google.com" else "isn't"
    print $ if isSuffixOf ".com" "google.com" then ".com is suffix of google.com" else "isn't"

