{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems xs = groupElems' xs (head xs) [] [] where
            groupElems' []     m p ls   = reverse (p:ls)
            groupElems' (x:xs) m p ls | x== m = groupElems' xs x (x:p) ls
                                      | otherwise = groupElems' xs x [x] (p:ls)


main = do
--    print . show $ groupElems []
    print . show $ groupElems [1,2]
    print . show $ groupElems [1,2,2,2,4]
    print . show $ groupElems [1,2,3,2,4]
