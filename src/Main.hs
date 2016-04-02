module Main where

data SomeType a = SomeType a

instance Monad SomeType where
    return = SomeType
    SomeType a >>= f = f a

instance Functor SomeType where
    fmap f x = x >>= \x' -> return (f x')

main = do
    undefined
