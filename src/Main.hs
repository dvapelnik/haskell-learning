module Main where

evenOnly :: [a] -> [a]
evenOnly = foldr (\(idx,x) a -> if even idx then x:a else a) [] . zip [1..]

main = do
    print . show $ evenOnly [1..10]
    print . show $ evenOnly ['a'..'z']
    print . show $ evenOnly [0]
    print . show $ evenOnly [0, 1]
    print . show $ take 5 . evenOnly $ [1..]
