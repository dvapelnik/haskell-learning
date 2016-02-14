module Main where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome xs = xs == (reverse xs)

isPalindrome' :: (Eq a) => [a] -> Bool
isPalindrome' [] = True
isPalindrome' [_] = True
isPalindrome' xs = (head xs) == (last xs) && (isPalindrome' . init . tail $ xs)

main = do
    print $ isPalindrome    "ama"
    print $ isPalindrome    "amaa"
    print $ isPalindrome'   "ama"
    print $ isPalindrome'   "amaa"
