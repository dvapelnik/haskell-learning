module Main where

import Text.Printf

type SHU = Integer

class Pepper p where
    color :: p -> String
    pungency :: p -> SHU

class Pepper p => Chili p where
    kind :: p -> String

data Poblano = Poblano
data TrinidadScorpion = TrinidadScorpion

instance Pepper Poblano where
    color Poblano = "green"
    pungency Poblano = 1500

instance Pepper TrinidadScorpion where
    color TrinidadScorpion = "red"
    pungency TrinidadScorpion = 855000

instance Chili Poblano where
    kind Poblano = "Chili poblano"

instance Chili TrinidadScorpion where
    kind TrinidadScorpion = "Chili trinidad scorpion"

-- But not this:
--data SomeOtherType = SomeOtherType
--instance Chili SomeOtherType where
--    kind SomeOtherType = "Not works"

pepperInfo :: Pepper pepper => pepper -> String
pepperInfo pepper = show (pungency pepper) ++ ", " ++ color pepper

main = do
    putStrLn $
        printf "Pepper 'Poblano' has %s color and %s pungency. %s" poblanoColorString poblanoPungencyString poblanoKindString
    putStrLn $
        printf "Pepper 'Poblano' has %s color and %s pungency. %s" trinidadColorString trinidadPungencyString trinidadKindString
    where
        poblano = Poblano
        poblanoColorString = color poblano
        poblanoPungencyString = show (pungency poblano)
        poblanoKindString = kind poblano

        trinidad = TrinidadScorpion
        trinidadColorString = color trinidad
        trinidadPungencyString = show (pungency trinidad)
        trinidadKindString = kind trinidad
