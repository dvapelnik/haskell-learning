module Main where

data Shape = Circle Double | Rectangle Double Double

isRectangle :: Shape -> Bool
isRectangle Rectangle{} = True
isRectangle _ = False

main = do
    undefined
