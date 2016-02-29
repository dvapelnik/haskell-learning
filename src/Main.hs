{-# LANGUAGE DeriveDataTypeable #-}

module Main where

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

main :: IO ()
--main = do
--    putStrLn "Foo"
--    putStrLn "Bar"
main = putStrLn "Foo" >> putStrLn "Bar"