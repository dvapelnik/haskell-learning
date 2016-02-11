module Main where

import Data.List
import Data.String.Utils

main = do
    print $ [1..10]
    print $ ['a'..'z']
    print $ ['а'..'я']
    print $ [2,4..10]
    print $ [1.1,1.2..2]
    print $ [120,110..10]
    print $ take 5 [1..]
    print $
        let
            begin = 2
            delta = 5
        in
        take 5 [begin, begin + delta..]


