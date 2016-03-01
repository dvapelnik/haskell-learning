{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoMonomorphismRestriction #-}

module Main where

import Data.List
import Data.Maybe

result :: Maybe String -> String
result email = if isNothing email then "Bad email" else "Good!"

main :: IO ()
main = print $ result $ Just "me@gmail.com" >>= checkFormat >>= checkDomain
    where
        checkFormat email =
          if '@' `elem` email then return email else Nothing
        checkDomain email =
          if ".com" `isSuffixOf` email then return email else Nothing