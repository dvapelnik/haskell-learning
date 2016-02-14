module Main where

import Text.Printf

data Person = Male String Int | Female String Int

instance Show Person where
    show (Male   name age) = printf "I'm a male. My name is '%s' and my age is '%d'"   name age
    show (Female name age) = printf "I'm a female. My name is '%s' and my age is '%d'" name age

stringifyPerson :: Person -> String
stringifyPerson person = show person

main = do
    print . stringifyPerson $ (Male   "Peter" 28)
    print . stringifyPerson $ (Female "Vikky" 23)

