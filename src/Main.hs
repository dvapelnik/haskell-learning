module Main where

import Data.Monoid

newtype Maybe' a = Maybe' { getMaybe :: Maybe a }
    deriving (Eq,Show)

instance Monoid a => Monoid (Maybe' a) where
    mempty = Maybe'{getMaybe = (Just mempty)}
    mappend mempty (Maybe' Nothing) = Maybe' Nothing
    mappend (Maybe' Nothing) mempty = Maybe' Nothing
    mappend (Maybe' a) (Maybe' b) = Maybe' (mappend a b)

main = do
    undefined
