module Main where

data Odd = Odd Integer
    deriving (Eq, Show)

instance Enum Odd where
    succ (Odd o) = Odd (o+2)
    pred (Odd o) = Odd (o-2)
    fromEnum (Odd a) = fromIntegral(a)
    toEnum a = Odd (toInteger a)
    enumFrom (Odd a) = map (\a -> Odd a) $ filter odd [a..]
    enumFromThen (Odd a) (Odd b) = map (\a -> Odd a) $ filter odd [a,b..]
    enumFromTo (Odd a) (Odd b) = map (\a -> Odd a) $ filter odd [a..b]
    enumFromThenTo (Odd a) (Odd b) (Odd c)= map (\a -> Odd a) $ filter odd [a,b..c]

main = do
    print . show $ succ $ Odd (-100000000000003)