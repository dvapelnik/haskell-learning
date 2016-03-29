module Main where

data Coord a = Coord a a

distance :: Coord Double -> Coord Double -> Double
distance (Coord ax ay) (Coord bx by) = sqrt((ax - bx)^2 + (ay - by)^2)

manhDistance :: Coord Int -> Coord Int -> Int
manhDistance (Coord ax ay) (Coord bx by) = (abs $ ax - bx) + (abs $ ay - by)

main = do
    undefined