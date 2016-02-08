module O_04_Lambdas where

powerLambda :: Int -> Int -> Int
powerLambda a b =
    f a b
    where f = \arg1 arg2 -> arg1 ^ arg2