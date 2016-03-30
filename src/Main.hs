module Main where

import Data.Monoid

newtype Xor = Xor { getXor :: Bool }
    deriving (Eq,Show)

instance Monoid Xor where
    mempty = Xor False
    mappend (Xor True) (Xor b) = Xor (not b)
    mappend (Xor _) (Xor b) = Xor b

main = do
    undefined
