module Main where

-- Show     convert to string (serilization)
-- Read     read from string (deserialization)
-- Eq       (==), (/=)
-- Ord      (>), (<), (>=), (<=), compare, min, max
-- Enum     only for nullar types like TransportLayer
--          can make generator like [TCP ..]
--          <Attention!> space before doubledot is important
-- Bounded  Can retrive min and max bounds of type
--          For instance for Int and TransportLayer type


data IPAddress = IPAddress String deriving Show
data User = User { name
                 , surname::String
                 , age::Int
                 } deriving (Show, Read, Eq, Ord)
data TransportLayer = TCP | UDP | SCTP | DCCP | SPX
                      deriving (Show, Enum, Bounded)

main = do
    print . IPAddress $ "localhost"
    print $ user
    print $
        let
            object = user
            serializedObject = show object
            deserializedObject = read serializedObject
        in
        object == deserializedObject
    print $
        let
            descriptionOf = \protocol ->
                case protocol of
                    TCP  -> "Transmission Control Protocol"
                    UDP  -> "User Datagram Protocol"
                    SCTP -> "Stream Control Transmission Protocol"
                    DCCP -> "Datagram Congestion Control Protocol"
                    SPX  -> "Sequenced Packet Exchange"
        in
        [descriptionOf protocol | protocol <- [TCP ..]]
    print $ show(minBound::TransportLayer)
    print $ show(maxBound::TransportLayer)
    where
        user = User { name = "Name"
                    , surname = "Surname"
                    , age = 18
                    }