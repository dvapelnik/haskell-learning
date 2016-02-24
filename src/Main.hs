module Main where

promptString :: String -> IO String
promptString prompt = do
    putStrLn prompt
    getLine

data User = User { firstname, lastname :: String } deriving (Show)

main :: IO ()
main = do
    firstname <- promptString "Input first name:"
    lastname <- promptString "Input last name:"
    print $ User { firstname = firstname, lastname = lastname}
