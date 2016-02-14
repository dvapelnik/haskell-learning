module Main where

myReverse :: String -> String
myReverse s = reverse s

myReverse' :: String -> String
myReverse' [] = []
myReverse' (x:xs) = myReverse' xs ++ [x]

main = do
    print $ myReverse   "A man, a plan, a canal, panama!"
    print $ myReverse'  "A man, a plan, a canal, panama!"
    print $ foldl (flip (:)) [] "A man, a plan, a canal, panama!"