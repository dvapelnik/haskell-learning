{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}

module Main where

data LogLevel = Error | Warning | Info

instance Eq LogLevel where
    Error == Error = True
    Error == _ = False
    Warning == Warning = True
    Warning == _ = False
    Info == Info = True
    Info == _= False
    _ == _ = False

instance Ord LogLevel where
    Error `compare` Warning = GT
    Error `compare` Info = GT
    Warning `compare` Info = GT
    Info `compare` Warning = LT
    Info `compare` Error = LT
    Warning `compare` Error = LT
    Error `compare` Error = EQ
    Warning `compare` Warning = EQ
    Info `compare` Info = EQ

cmp :: LogLevel -> LogLevel -> Ordering
cmp a b | a < b = LT
        | a > b = GT
        | a == b = EQ

main = do
    print $ cmp Error Warning
    print $ cmp Info  Warning
