module Main where

unfoldr :: (b -> Maybe(a, b)) -> b -> [a]
unfoldr f ini = helper (f ini)
    where
        helper (Just(x, ini')) = x : unfoldr f ini'
        helper Nothing         = []

revRange :: (Char,Char) -> [Char]
revRange (a, b) =
    let
        g (x, (a, b)) =
            if
                x < a
            then
                Nothing
            else
                Just (x, (pred x, (a, b)))
    in
    unfoldr g (b, (a, b))

main = do
    print . show $ unfoldr (\x -> if x == 10 then Nothing else Just (x, x+1)) 0
    print . show $ revRange ('a','z')
