module Main where

facs :: (Num a, Enum a) => [a]
facs = scanl (*) 1 [1..]

partialSums :: (Num a) => [a] -> [a]
partialSums = scanl (+) 0

main = do
    print . show $ take 15 . partialSums . map (**(-1)) $ facs
