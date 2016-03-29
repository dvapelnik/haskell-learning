module Main where

data List a = Nil | Cons a (List a) deriving Show

fromList :: List a -> [a]
fromList lst = case lst of Nil       -> []
                           Cons x xs -> (x:fromList xs)
toList :: [a] -> List a
toList [] = Nil
toList (x:xs) = x `Cons` (toList xs)

main = do
    undefined
