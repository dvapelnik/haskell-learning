module Main where

import System.IO

data User = User { login, password, password2 :: String } deriving (Show)

askUserCredentials :: IO User
askUserCredentials = do
    putStrLn "Login:"
    login <- getLine
    putStrLn "Password:"
    password <- getLine
    putStrLn "Confirm password:"
    password2 <- getLine
    return $ User { login = login, password = password, password2 = password2 }

main :: IO ()
main = do
    hSetBuffering stdout LineBuffering
    user <- askUserCredentials
    print $ user