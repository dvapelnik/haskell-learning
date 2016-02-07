module Calculus (
    add
  , diff
  , division
  , multiple
  , power
) where

add :: Int -> Int -> Int
add a b = a + b

diff :: Int -> Int -> Int
diff a b = a - b

division :: Double -> Double -> Double
division a b = a / b

multiple :: Int -> Int -> Int
multiple a b = a * b

power :: Int -> Int -> Int
power a b = a ^ b