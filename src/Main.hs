module Main where

import Text.Printf
import Data.String.Utils

data User a = User { name
                 , surname::String
                 , age::a
                 }

instance Show a => Show (User a) where
    show (User name surname age) =
        let
            aStringed = replace "\"" "" . show $ age
        in
        printf "Name: %s; Surname: %s; Age %s" name surname aStringed

data MyType a = MyType { someField :: a }
instance Show a => Show (MyType a) where
    show (MyType a) = "My stringification " ++ (replace "\"" "" . show $ a)


main = do
    print $ MyType { someField = 12.45 :: Double}
    print $ MyType { someField = "12.45" :: String}
    print $ User { name = "NAME"
                 , surname = "SURNAME"
                 , age = 18 :: Int
                 }
    print $ User { name = "NANEM"
                 , surname = "SURNAME"
                 , age = "23" :: String
                 }
