{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoMonomorphismRestriction #-}

module Main where

import Data.Char
import Data.Maybe

coefficientFromString :: String -> Maybe Int
coefficientFromString str =
    if isNumber firstChar then Just (digitToInt firstChar) else Nothing
    where firstChar = str !! 0

check :: Maybe Int -> String
check aCoefficient
    | aCoefficient == Nothing = "Invalid string!"
    | otherwise = show aCoefficient

check' :: Maybe Int -> String
check' aCoefficient =
    if isNothing aCoefficient
    then "Invalid string!"
    else show aCoefficient


main :: IO ()
main = do
    print $ check $ coefficientFromString "0foo"
    print $ check $ coefficientFromString "bar"
    print $ check' $ coefficientFromString "0foo"
    print $ check' $ coefficientFromString "bar"