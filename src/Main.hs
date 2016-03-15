{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Data.Char

readDigits :: String -> (String, String)
readDigits = span isDigit

main = do
    print . show $ readDigits "365ads"
    print . show $ readDigits "365"
