module Main where

myButLastLastInit :: [a] -> a
myButLastLastInit [] = error "List is empty"
myButLastLastInit [_] = error "Has only one element"
myButLastLastInit x = last . init $ x

myButLastByIndex :: [a] -> a
myButLastByIndex [] = error "List is empty"
myButLastByIndex [_] = error "Has only one element"
myButLastByIndex x = x !! (length x - 2)

myButLastSecondAfterReverse :: [a] -> a
myButLastSecondAfterReverse [] = error "List is empty"
myButLastSecondAfterReverse [_] = error "Has only one element"
myButLastSecondAfterReverse x = reverse x !! 1

main = do
    print $ myButLastLastInit [1, 2, 3]
    print $ myButLastByIndex [1, 2, 3]
    print $ myButLastSecondAfterReverse [1, 2, 3]