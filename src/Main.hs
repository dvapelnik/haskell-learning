{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

oddsOnly :: Integral a => [a] -> [a]
oddsOnly [] = []
oddsOnly (x:xs) =
    if odd x
    then
        [x] ++ oddsOnly xs
    else
        [] ++ oddsOnly xs

main = do
    print . show $ oddsOnly [2,5,7,10,11,12]
