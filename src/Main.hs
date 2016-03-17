module Main where

meanList :: [Double] -> Double
meanList = (\(s, n) -> s/n) . foldr (\x (s, n) -> (s+x, n+1)) (0.0, 0.0)

main = do
    print . show $ meanList [1,2,3,4]
