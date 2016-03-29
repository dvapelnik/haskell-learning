module Main where

data Tree a = Leaf a | Node (Tree a) (Tree a)

height :: Tree a -> Int
height (Leaf l) = 0
height (Node treeLeft treeRight) = 1 + max (height treeLeft) (height treeRight)

size :: Tree a -> Int
size (Leaf l) = 1
size (Node treeLeft treeRight) = 1 + size treeLeft + size treeRight

main = do
    undefined
