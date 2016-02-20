module Main where

import Text.Printf

type SHU = Integer

class Pepper p where
    color :: p -> String
    pungency :: p -> SHU

data Poblano = Poblano
data TrinidadScorpion = TrinidadScorpion

instance Pepper Poblano where
    color Poblano = "green"
    pungency Poblano = 1500

instance Pepper TrinidadScorpion where
    color TrinidadScorpion = "red"
    pungency TrinidadScorpion = 855000

main = do
    printf "Pepper 'Poblano' has %s color and %s pungency" poblanoColorString poblanoPungencyString
    printf "Pepper 'Poblano' has %s color and %s pungency" trinidadColorString trinidadPungencyString
    where
        poblano = Poblano
        poblanoColorString = color poblano
        poblanoPungencyString = show (pungency poblano)

        trinidad = TrinidadScorpion
        trinidadColorString = color trinidad
        trinidadPungencyString = show (pungency trinidad)
