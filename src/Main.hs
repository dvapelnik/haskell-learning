{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

-- Non-exhaustive patterns in function isPalindrome
isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' [x] = True
isPalindrome' [x, y] = x == y
isPalindrome' (x:xs) = (x == last xs) && (isPalindrome' . init $ xs)

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs

main = do
    print . show $ head [1, 2]
    print . show $ last [1, 2]
    print . show $ (\(x:xs) -> init xs) [1, 2, 3, 4]
    print . show $ isPalindrome "saippuakivikauppias"
    print . show $ isPalindrome [1]
    print . show $ isPalindrome [1, 2]
    print . show $ isPalindrome [1, 2, 1]
    print . show $ isPalindrome [1, 2, 2, 1]
