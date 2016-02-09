module L_05_Types where

type IntToInt = Int -> Int

doubleMeIntTyped :: IntToInt
doubleMeIntTyped a = a + a
