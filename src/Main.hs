{-# LANGUAGE BangPatterns #-}

module Main where

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b | a == b  = 0
                  | a > b   = (-1) * integration f b a
                  | otherwise =
                    let
                        step = (b-a) / 1000
                        accum = 0.0
                    in
                    stInt accum f a step b
                    where
                        stInt accum f begin step b | begin > b = accum
                                                   | otherwise =
                                                        let
                                                            lft = f begin
                                                            rgt = f (begin + step)
                                                            localtInt = step * (lft + rgt) / 2
                                                            newAccum = accum + localtInt
                                                            newBegin = begin + step
                                                        in
                                                        stInt newAccum f newBegin step b


main = putStrLn . show $ integration (\x -> x) 0 2