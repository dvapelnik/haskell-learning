{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoMonomorphismRestriction #-}

module Main where

import Data.Functor -- for using <$>

--class Functor f where
--    fmap :: (a -> b) -> f a -> f b

--class Functor f => Applicative f where
--    pure  :: a -> f a
--    (<*>) :: f (a -> b) -> f a -> f b  -- Наш главный герой.
--    (*>)  :: f a -> f b -> f b
--    (<*)  :: f a -> f b -> f a

main :: IO ()
main = do
