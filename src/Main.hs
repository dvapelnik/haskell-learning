module Main where

newtype IPAddress = IP String deriving Show

type NewIPAddress = IPAddress

yIPAddress :: NewIPAddress -> String
yIPAddress a = show a

main = do
    print $ IP "127.0.0.1"
    print $
        let
            ip_address = IP "localhost"
        in
        yIPAddress ip_address
    print . yIPAddress $ IP "localhost"