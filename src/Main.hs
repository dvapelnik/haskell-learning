module Main where

import Data.Time.Clock
import Data.Time.Format
import System.Locale

timeToString :: UTCTime -> String
timeToString = formatTime defaultTimeLocale "%a %d %T"

data LogLevel = Error | Warning | Info

data LogEntry = LogEntry { timestamp :: UTCTime, logLevel :: LogLevel, message :: String }

logLevelToString :: LogLevel -> String
logLevelToString logLevel = case logLevel of Error -> "Error"
                                             Warning -> "Warning"
                                             Info -> "Info"

logEntryToString :: LogEntry -> String
logEntryToString logEntry = (timeToString . timestamp $ logEntry) ++ ": " ++ (logLevelToString . logLevel $ logEntry) ++ ": " ++ (message logEntry)

main = do
    undefined
