module Main where

import Text.Printf

data Person = Male {name::String, age::Int} | Female {name::String, age::Int}

instance Show Person where
    show (Male   name age) = printf "I'm a male. My name is '%s' and my age is '%d'"   name age
    show (Female name age) = printf "I'm a female. My name is '%s' and my age is '%d'" name age

stringifyPerson :: Person -> String
stringifyPerson person = show person

main = do
    print . stringifyPerson $ (Male   "Peter" 28)
    print . stringifyPerson $ (Female "Vikky" 23)
    print $ [person | person@(Male name age) <- persons]
    print $ [person | person@(Female name age) <- persons]
    print $ [name person | person@(Male {}) <- persons]
    print $ [age person | person@(Male {}) <- persons]
    print $ [name person ++ " has age " ++ show (age person) | person@(Male {}) <- persons]
    print $ [name person ++ " has age " ++ show (age person) | person@(Female {}) <- persons]
        where persons = [Male "Peter" 28, Male "Nick" 20, Female "Jennny" 25]

