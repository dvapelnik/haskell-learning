module Main where

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
    user <- askUserCredentials
    print $ user