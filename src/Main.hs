module Main where

data Connection = Connection {ip::String, port::Int}

instance Show Connection where
    show (Connection ip port) = ip ++ ":" ++ show port

instance Eq Connection where
    (==) (Connection ip1 port1) (Connection ip2 port2) = (ip1 == ip2) && (port1 == port2)
    (/=) connection1 connection2 = not (connection1 == connection2)

getConnectionStringIfInList :: (Eq a, Show a) => a -> [a] -> String
getConnectionStringIfInList a list =
    if a `elem` list
    then show a
    else ""

main = do
    print $ connections
    print $ correctConnection `elem` connections
    print $ wrongConnection `elem` connections
    print . getConnectionStringIfInList correctConnection $ connections
    print . getConnectionStringIfInList wrongConnection $ connections
    where
        connections = [Connection "127.0.0.1" 80, Connection "10.0.8.9" 433]
        correctConnection = Connection "127.0.0.1" 80
        wrongConnection = Connection "127.0.0.1" 8080
