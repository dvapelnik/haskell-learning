module Main where

import Data.List (foldl', unfoldr)

data Bit = O | I | Zero | One deriving (Eq, Show)
data Sign = Minus | Plus deriving (Eq, Show)
data Z = Z Sign [Bit] deriving (Eq, Show)

toInteger' :: Z -> Integer
toInteger' (Z sign bits) = (decodeSign sign) * (fst $ decodeBits bits) where
    decodeBits xs = foldl' f (0, 0) xs
    f (num, pos) bit = (num + (decodeBit bit) * (2 ^ pos), pos + 1)
    decodeBit O     = 0
    decodeBit Zero  = 0
    decodeBit I     = 1
    decodeBit One   = 1
    decodeSign Minus = -1
    decodeSign Plus  =  1


toZ :: Integer -> Z
toZ num = Z (encodeSign num) (encodeBits $ abs num) where
    -- unfoldr :: (b -> Maybe (a, b)) -> b -> [a]
    encodeBits num = unfoldr f num
    f 0 = Nothing
    f num = let (d, m) = divMod num 2 in Just (encodeBit m, d)
    encodeSign num | num < 0   = Minus
                   | otherwise = Plus
    encodeBit 0 = Zero
    encodeBit 1 = One

add :: Z -> Z -> Z
add x y = toZ $ (toInteger' x) + (toInteger' y)
mul :: Z -> Z -> Z
mul x y = toZ $ (toInteger' x) * (toInteger' y)

add' :: Z -> Z -> Integer
add' x y = (toInteger' x) + (toInteger' y)
mul' :: Z -> Z -> Integer
mul' x y = (toInteger' x) * (toInteger' y)

getZ1 = Z Plus [I,O,O,I]
getZ2 = Z Minus [I,O,O,I]


compute' :: ((Z -> Z -> Integer), [Char])  -> Z -> Z -> [Char]
compute' (f, fName) x y = (show $ toInteger' x) ++ " " ++ fName ++ " " ++ (show $ toInteger' y) ++ " = " ++ (show $ (f x y))

compute :: ((Z -> Z -> Z), [Char]) -> Z -> Z -> [Char]
compute (f, fName) x y = (show $ toInteger' x) ++ " " ++ fName ++ " " ++ (show $ toInteger' y) ++ " = " ++ (show $ toInteger' (f x y))

main = putStrLn $ show $ compute (mul,"*") getZ1 getZ2

--main = do
--    undefined
