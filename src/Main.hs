module Main where

import L_00_MyBoolean
import L_01_Calculus
import L_02_ClassOfGroup
import L_03_RealFunctions
import L_04_Lambdas
import L_05_Types

main :: IO ()

main = do
    putStrLn "- Calculus"
    putStrLn ( show $ add 2 2)
    putStrLn ( show $ diff 1 5)
    putStrLn ( show $ division 1 2 )
    putStrLn ( show $ multiple 2 4 )
    putStrLn ( show $ power 2 10 )
    putStrLn "- Lazying"
    print(take 2 (replicate 100 "127.0.0.1"))
    print(take 4 (repeat "127.0.0.1"))
    putStrLn "- Real clean functions"
    putStrLn "-- Double me int"
    print (doubleMeInt 4)
    print (doubleMeInt 49)
    putStrLn "-- IP resolving"
    putStrLn (resolveIpIfThenElse "127.0.0.1")
    putStrLn (resolveIpIfThenElse "10.1.16.1")
    putStrLn (resolveIpMatched "127.0.0.1")
    putStrLn (resolveIpMatched "10.1.16.1")
    putStrLn (resolveIpGuarded "127.0.0.1")
    putStrLn (resolveIpGuarded "10.1.16.1")
    putStrLn (resolveIpGuarded "")
    putStrLn "-- Length converting"
    print (lengthConversionSimple 1.5)
    print (lengthConversionWithWhere 1.5)
    print (lengthConversionWithLet 1.5)
    putStrLn "- Lambdas"
    print ((\x -> x * x ) 5)
    print (powerLambda 2 3)
    putStrLn "- Types"
    print(doubleMeIntTyped 45)

