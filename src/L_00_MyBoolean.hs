module L_00_MyBoolean where

myTrue :: Bool
myTrue = True

myFalse :: Bool
myFalse = False

myNot :: Bool -> Bool
myNot True = False
myNot False = True

myAnd :: Bool -> Bool -> Bool
myAnd False _ = False
myAnd True x = x

myOr :: Bool -> Bool -> Bool
myOr True _ = True
myOr False x = x

myXor :: Bool -> Bool -> Bool
myXor a b = myOr (myAnd (myNot a) b) (myAnd a (myNot b))

myIfThenElse :: Bool -> a -> a -> a
myIfThenElse True t _ = t
myIfTherElse False _ e = e