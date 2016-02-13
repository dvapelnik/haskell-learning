module Main where

myLastRecursive :: [a] -> a
myLastRecursive [] = error "List is empty!"
myLastRecursive [x] = x
myLastRecursive (_:x) = myLastRecursive x

myLastByIndex :: [a] -> a
myLastByIndex [] = error "List is empty!"
myLastByIndex x = x !! (length x - 1)

main = do
    print $ last [1, 2, 3]
    print . head . reverse $  [1, 2, 3]
    print . myLastRecursive $ take 10 [1,19..]
    print . myLastByIndex $ take 10 [1,19..]
