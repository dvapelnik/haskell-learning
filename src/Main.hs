module Main where

import System.IO

data User = User { login, password :: String } deriving (Show)

askUserCredentials :: IO User
askUserCredentials = do
    putStrLn "Login:"
    login <- getLine
    putStrLn "Password:"
    password <- getLine
    return $ User { login = login, password = password }

main :: IO ()
main = do
    hSetBuffering stdout LineBuffering
    user <- askUserCredentials
    print $ user