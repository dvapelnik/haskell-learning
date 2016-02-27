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

    result <- try $ readFile (homePath ++ "/.bashrc.wrong") :: IO (Either IOException String)
    case result of
        Left exception -> putStrLn $ "Fault: " ++ show exception
        Right content -> putStrLn content

    result <- try $ evaluate $ 2 `div` 0 :: IO (Either SomeException Integer)
    case result of
        Left exception -> putStrLn $ "Fault: " ++ show exception
        Right evaluationResult -> putStrLn $ "The result is " ++ show evaluationResult
