module Main where



main = do
    putStrLn . show $ logBase 4 (min 20 (9 + 7))
    putStrLn . show $ logBase 4 $ min 20 $ 9 + 7
