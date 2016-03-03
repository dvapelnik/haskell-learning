{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoMonomorphismRestriction #-}

module Main where

import Data.Functor -- for using <$>
import Control.Applicative

--class Functor f where
--    fmap :: (a -> b) -> f a -> f b

--class Functor f => Applicative f where
--    pure  :: a -> f a
--    (<*>) :: f (a -> b) -> f a -> f b  -- Наш главный герой.
--    (*>)  :: f a -> f b -> f b
--    (<*)  :: f a -> f b -> f a

data Distance value = Distance value deriving Show

instance Functor Distance where
    fmap magicWand (Distance value) = Distance (magicWand value)

instance Applicative Distance where
    pure magicWand = Distance magicWand
    Distance magicWand <*> functor = fmap magicWand functor

main :: IO ()
main = do
    print $ (+) <$> Distance 3 <*> Distance 2
    print $ pure (+) <*> Distance 3
                     <*> Distance 2
