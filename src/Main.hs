module Main where

data Tree a = Leaf a | Node (Tree a) (Tree a)

height :: Tree a -> Int
height (Leaf l) = 0
height (Node treeLeft treeRight) = 1 + max (height treeLeft) (height treeRight)

size :: Tree a -> Int
size (Leaf l) = 1
size (Node treeLeft treeRight) = 1 + size treeLeft + size treeRight

avg :: Tree Int -> Int
avg t =
    let (c,s) = go t
    in s `div` c
  where
    go :: Tree Int -> (Int,Int)
    go (Leaf n) = (1, n)
    go (Node treeLeft treeRight) =
        let
            (c1, s1) = go n1
            (c2, s2) = go n2
        in
        (c1+c2, s1+s2)

main = do
    undefined
