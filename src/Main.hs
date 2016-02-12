module Main where

import Data.List
import Data.Char
import Data.String.Utils
import Data.Tuple.Extra
import Data.Tuple.Select

main = do
    print $ [toUpper c | c <- "http"]
    print $ [toUpper c | c <- "http", c == 't']
    print $ [toUpper c | c <- "http", c == 't' || c == 'p', c == 'p']
    print $ [toUpper c | c <- "http", c /= 't']
    print $ [prefix ++ " " ++ name | name <- ["John", "Mary"], prefix <- ["Mr."]]
    print $ [prefix ++ " " ++ name | name <- ["John", "Mary"], prefix <- ["Mr.", "Ms.", "Mss."]]
    print $ [if car == "Bentley" then "Wow!" else "Good!" | car <- ["Mercedes", "BMW", "Bentley", "Audi", "Bentley"]]
    print $
        let
            nameFrom fullEmail  = takeWhile (/= '@') fullEmail
            checkGooglerBy email =
                if "gmail.com" `isSuffixOf` email
                then nameFrom email ++ " is Googler!"
                else email
        in
        [checkGooglerBy email | email <- ["adam@gmail.com", "bob@yahoo.com", "richard@gmail.com", "elena@yandex.ru", "asdadasd@", "denis@gmail.com"]]

