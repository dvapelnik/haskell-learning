module Main where

import Text.Printf

type SHU = Integer

class Pepper p where
    simple   :: p           -- Это константное значение, а не функция.
    color    :: p -> String
    pungency :: p -> SHU
    name     :: p -> String

data Poblano = Poblano String

instance Pepper Poblano where
    simple = Poblano "ancho"         -- Готовим простое значение.
    color (Poblano name) = "green"
    pungency (Poblano name) = 1500
    name (Poblano name) = name

main = do
    print $ name (simple :: Poblano)
    print $ color poblano
    print $ pungency poblano
    print $ name poblano
    where
        poblano = Poblano "POBLANO"

