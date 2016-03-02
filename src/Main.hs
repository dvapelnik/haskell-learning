{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoMonomorphismRestriction #-}

module Main where

import Data.Functor -- for using <$>

--class Functor f where
--    fmap :: (a -> b) -> f a -> f b

data Year value = Year value deriving Show

instance Functor Year where
    fmap magicWand (Year value) = Year (magicWand value)

increase :: Int -> Int
increase val = val + 1

main :: IO ()
main = do
    print $ fmap increase iYear
    print $ fmap (\year -> "Happy New " ++ year ++ " Year!") sYear
    print $ (\year -> "Happy New " ++ year ++ " Year!") <$> sYear
        where
            iYear = Year 2015
            sYear = Year "2015"
