module Main where

data Log a = Log [String] a deriving Show

instance Monad Log where
    return = returnLog
    (>>=) = bindLog

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f msg a = Log [msg] (f a)

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers x f g =
    let
        Log ys y = f x
        Log zs z = g y
    in
    Log (ys++zs) z

returnLog :: a -> Log a
returnLog a = Log [] a

bindLog :: Log a -> (a -> Log b) -> Log b
bindLog (Log logsa a) f = Log (logsa ++ logsb) b where
  (Log logsb b) = f a

execLoggersList :: a -> [a -> Log a] -> Log a
execLoggersList = foldl (>>=) . return

main = do
    undefined
