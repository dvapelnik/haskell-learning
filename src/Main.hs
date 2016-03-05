{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoMonomorphismRestriction #-}

module Main where

import Data.Functor -- for using <$>
import Control.Applicative

--class Functor f where
--    fmap :: (a -> b) -> f a -> f b

--class Functor f => Applicative f where
--    pure  :: a -> f a
--    (<*>) :: f (a -> b) -> f a -> f b
--    (*>)  :: f a -> f b -> f b
--    (<*)  :: f a -> f b -> f a

data MyType value = MyType value deriving Show
instance Functor MyType where
    fmap fn (MyType value) = MyType ((\x -> x)(fn value))

data Distance value = Distance value deriving Show

instance Functor Distance where
    fmap magicWand (Distance value) = Distance (magicWand value)

instance Applicative Distance where
    pure magicWand = Distance magicWand
    Distance magicWand <*> functor = fmap magicWand functor
    Distance a *> Distance b = Distance b
    Distance a <* Distance b = Distance a

obtainTwoTextsFromUser :: IO String
obtainTwoTextsFromUser =
    (joinWIthGlue "+++++") <$> getFirstText <*> getSecondText -- string concatenation
    where getFirstText = putStrLn "Enter your text, please: " *> getLine
          getSecondText = putStrLn "One more, please: " *> getLine
          joinWIthGlue glue a b = a ++ glue ++ b

main :: IO ()
main = obtainTwoTextsFromUser >>= \text -> putStrLn $ "Your glued strings is: " ++ text