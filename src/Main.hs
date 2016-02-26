module Main where

import System.IO
import Control.Exception
import System.Environment

--catch :: Exception e => IO a -> (e -> IO a) -> IO a

tryToOpenFile :: FilePath -> IO String
tryToOpenFile path =
    readFile path `catch` possibleErrors
--    catch (readFile path) possibleErrors
    where
        possibleErrors :: IOException -> IO String
        possibleErrors error = return $ show error

tryToOpenFile' :: FilePath -> IO String
tryToOpenFile' path =
    handle possibleErrors (readFile path)
    where
        possibleErrors :: IOException -> IO String
        possibleErrors error = return $ show (error) ++ " with handling"

main :: IO ()
main = do
    homePath <- getEnv "HOME"
    fileContent <- tryToOpenFile $ homePath ++ "/.bashrc"
    putStrLn fileContent
    fileContentFromWrongPath <- tryToOpenFile $ homePath ++ "/.bashrc.wrong"
    putStrLn fileContentFromWrongPath
    fileContentFromWrongPath' <- tryToOpenFile' $ homePath ++ "/.bashrc.wrong"
    putStrLn fileContentFromWrongPath'