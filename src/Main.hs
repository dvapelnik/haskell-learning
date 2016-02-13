module Main where

data IpAddress = IpAddress String
instance Show IpAddress where
    show (IpAddress address) =
        if address == "127.0.0.1"
        then "localhost"
        else address

data Person = Person String Int
instance Show Person where
    show (Person name age) = "Person has name '" ++ name ++ "' and age '" ++ show age ++ "'"

main = do
    print $
        let
            localhost = IpAddress "127.0.0.1"
        in
        show localhost
    print $
        let
            peter = Person "Peter" 28
        in
        show peter