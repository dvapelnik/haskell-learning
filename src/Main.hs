module Main where

import System.Directory (getDirectoryContents, removeFile)
import Data.List (isInfixOf, filter)
import Control.Monad(liftM)

main' :: IO ()
main' = do
  putStr $ "Substring: "
  pattern <- getLine
  if null pattern
    then putStrLn "Canceled"
    else getFiles pattern >>= mapM_ deleteFile

getFiles :: String -> IO [FilePath]
getFiles pattern =
  liftM (filter (isInfixOf pattern)) $ getDirectoryContents "."

deleteFile :: FilePath -> IO ()
deleteFile path = do
  putStrLn $ "Removing file: " ++ path
  removeFile path

main :: IO ()
main = do
  putStr $ "What is your name?\nName: "
  name <- getLine
  if null name
    then main
    else putStrLn $ "Hi, " ++ name ++ "!"