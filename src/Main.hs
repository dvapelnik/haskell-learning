{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj p f xs =
    let
        or_filter :: (a -> Bool) -> (a -> Bool) -> a -> Bool
        or_filter p' f' x = p' x || f' x
    in
    filter (or_filter p f) xs

main = do
    print . show $ filterDisj (< 10) odd [7,8,10,11,12]
