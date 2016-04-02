module Main where

main :: IO ()
main = do
  putStr $ "What is your name?\nName: "
  name <- getLine
  if null name
    then main
    else putStrLn $ "Hi, " ++ name ++ "!"