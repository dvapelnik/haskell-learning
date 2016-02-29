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

obtainTextFromUser :: IO String
--obtainTextFromUser = do
--    putStrLn "Enter your text, please: "
--    firstText <- getLine
--    return $ "'" ++ firstText ++ "'"
obtainTextFromUser = putStrLn "Enter your text, please: " >> getLine >>= \firstText -> return $ "[" ++ firstText ++ "]"

main :: IO ()
main = obtainTextFromUser >>= \firstText -> putStrLn firstText