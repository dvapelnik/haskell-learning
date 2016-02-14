module Main where

data IpAddress = IpAddress String
instance Show IpAddress where
    show (IpAddress address) =
        if address == "127.0.0.1"
        then "localhost"
        else address

data Person = Person String Int | PersonNamed String Int
instance Show Person where
    show (Person name age)      =   "Person has name '" ++ name ++ "' and age '" ++ show age ++ "'"
    show (PersonNamed name _)   =   "PersonNamed has name '" ++ name ++ "'"

data TransportLayer = TCP | UDP | SCTP | DCCP | SPX

descriptionOf :: TransportLayer -> String
descriptionOf proto =
    case proto of
        TCP  -> "Transmission Control Protocol"
        UDP  -> "User Datagram Protocol"
        SCTP -> "Stream Control Transmission Protocol"
        DCCP -> "Datagram Congestion Control Protocol"
        SPX  -> "Sequenced Packet Exchange"

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
    print $
        let
            peter = PersonNamed "Peter" 28
        in
        show peter
    print $ descriptionOf TCP
    print $ descriptionOf UDP
    print $ descriptionOf SCTP
    print $ descriptionOf DCCP
    print $ descriptionOf SPX