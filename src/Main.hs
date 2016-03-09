{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

class (Enum a, Bounded a, Eq a) => SafeEnum a where
    ssucc :: a -> a
    ssucc a =
        if a == (maxBound :: a)
        then
            minBound :: a
        else
            succ a

    spred :: a -> a
    spred a =
        if a == (minBound :: a)
        then
            maxBound :: a
        else
            pred a

instance SafeEnum Bool

main = do
    print . show . ssucc $ False
    print . show . ssucc $ True
    print . show . spred $ False
    print . show . spred $ True
