{-# LANGUAGE DeriveDataTypeable #-}

module Main where

import Control.Exception
import Data.String.Utils
import Data.Typeable

type Repo = String

data InvalidRepository = InvalidRepository Repo deriving (Show, Typeable)

instance Exception InvalidRepository

extractProtocol :: String -> String
extractProtocol path =
    if path `startsWith` "git" || path `startsWith` "ssh"
    then
        takeWhile (/= ':') path
    else
        throw $ InvalidRepository path
    where
        startsWith url prefix = startswith prefix url

main :: IO ()
main = do
    result <- try $ evaluate $ extractProtocol "https://user@server" :: IO (Either SomeException String)
    case result of
        Left exception -> putStrLn $ "Failed: " ++ show exception
        Right protocol -> putStrLn . show $ protocol