module Main where



main = do
    putStrLn . show $ 5 + (4 - (4 * 2))
    putStrLn . show $ (+) 5 ((-) 4  ((*) 4 2))
    putStrLn . show $ (+) 5 $ (-) 4 $ (*) 4 2
