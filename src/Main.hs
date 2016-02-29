{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoMonomorphismRestriction #-}

module Main where

import Data.Char

--class Monad m where
--    (>>=)  :: m a -> (a -> m b) -> m b
--    (>>)   :: m a -> m b -> m b
--    return :: a -> m a
--    fail   :: String -> m a

--class Monad IO where
--    (>>=)  :: IO a -> (a -> IO b) -> IO b
--    (>>)   :: IO a -> IO b -> IO b
--    return :: a -> IO a
--    fail   :: String -> IO a

toLowerCase = return . toLower
toRealNubmers = return . digitToInt
doDouble = return . \n -> n + n
addTen = return . \n -> n + 10

underlineSpaces char = return $ if char == ' ' then '_' else char

main :: IO ()
main = do
    print $ text >>= toLowerCase >>= underlineSpaces
    print $ numbers >>= toRealNubmers >>= doDouble >>= addTen
    print $ justA >>= toLowerCase
    where
        text = "adadwdwadwda d awda wda "
        numbers = "0123456789"
        justA = Just 'A'