module Main where

main :: IO ()
main = do
    putStrLn $ "Input your text, please:"
    lineFromUser <- getLine
    putStrLn $ "Not bad: " ++ lineFromUser