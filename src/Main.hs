module Main where

elementAt :: [a] -> Int -> a
elementAt   [] _    = error "List is empty"
elementAt   [x] 1   = x
elementAt   x n     =
    if n > length x
    then error "Out of bounds"
    else x !! (n - 1)

elementAt' :: [a] -> Int -> a
elementAt'   [] _    = error "List is empty"
elementAt'   [x] 1   = x
elementAt'   x n
    | n > length x  = error "Out of bounds"
    | otherwise     = x !! (n - 1)

elementAt'' :: [a] -> Int -> a
elementAt'' (x:_) 1 = x
elementAt'' [] _    = error "Out of bounds"
elementAt'' (_:xs) k
    | k < 1         = error "Out of bounds"
    | otherwise     = elementAt'' xs (k - 1)

elementAt''' :: [a] -> Int -> a
elementAt''' (x:_) 1    = x
elementAt''' [] _       = error "Out of bounds"
elementAt''' (_:xs) k   = elementAt''' xs (k - 1)
elementAt''' _ _        = error "Out of bounds"

elementAt'''' :: [a] -> Int -> a
elementAt'''' x n
    | length x == 0     = error "List is empty"
    | length x < n      = error "Out of bounds"
    | otherwise         = fst . last $ zip x [1..n]

elementAt''''' :: [a] -> Int -> a
elementAt''''' x n
    | length x == 0     = error "List is empty"
    | length x < n      = error "Out of bounds"
    | otherwise         = head $ drop (n - 1) x

main = do
    print $ elementAt       [1..3] 1
    print $ elementAt'      [1..3] 2
    print $ elementAt''     [1..3] 3
    print $ elementAt'''    [1..3] 1
    print $ elementAt''''   [1..3] 2
    print $ elementAt'''''  [1..3] 3
