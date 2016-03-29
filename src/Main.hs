module Main where

import Data.Fixed

data Coord a = Coord a a

distance :: Coord Double -> Coord Double -> Double
distance (Coord ax ay) (Coord bx by) = sqrt((ax - bx)^2 + (ay - by)^2)

manhDistance :: Coord Int -> Coord Int -> Int
manhDistance (Coord ax ay) (Coord bx by) = (abs $ ax - bx) + (abs $ ay - by)

--Плоскость разбита на квадратные ячейки.
--Стороны ячеек параллельны осям координат.
--Координаты углов ячейки с координатой (0,0) имеют неотрицательные координаты.
--Один из углов этой ячейки имеет координату (0,0).
--С ростом координат ячеек увеличиваются координаты точек внутри этих ячеек.
--Реализуйте функции getCenter, которая принимает координату ячейки и возвращает координату ее центра,
--и функцию getCell, которая принимает координату точки
--и возвращает номер ячейки в которой находится данная точка.
--В качестве первого аргумента обе эти функции принимают ширину ячейки.

getCenter :: Double -> Coord Int -> Coord Double
getCenter width (Coord cx cy) = Coord ((fromIntegral cx) * width + width/2) ((fromIntegral cy) * width + width/2)

getCell :: Double -> Coord Double -> Coord Int
getCell width (Coord xx xy) = Coord ix iy
    where
        (ix, rx) = divMod' xx width
        (iy, ry) = divMod' xy width

main = do
    undefined