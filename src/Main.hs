module Main where

data Tree a = Leaf (Maybe a) | Branch (Tree a) (Maybe a) (Tree a) deriving Show

instance Functor Tree where
    fmap f (Leaf m) = Leaf (fmap f m)
    fmap f (Branch l m r) = Branch (fmap f l) (fmap f m) (fmap f r)

main = do
    undefined
