module Main where

unfoldr :: (b -> Maybe(a, b)) -> b -> [a]
unfoldr f ini = helper (f ini)
    where
        helper (Just(x, ini')) = x : unfoldr f ini'
        helper Nothing         = []

main = do
    print . show $ unfoldr (\x -> if x == 10 then Nothing else Just (x, x+1)) 0
