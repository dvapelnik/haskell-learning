module Main where

import System.IO
import Control.Exception
import System.Environment

main :: IO ()
main = do
    homePath <- getEnv "HOME"
    putStrLn homePath
    fileContent <- readFile $ homePath ++ "/.bashrc"
    putStrLn fileContent