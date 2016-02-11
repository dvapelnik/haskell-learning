module Main where

import Data.List
import Data.String.Utils

makeDaysWithPrefix :: String -> [String]
makeDaysWithPrefix prefix = [prefix ++ space ++ "Sunday", prefix ++ space ++ "Monday"]
    where space = " "

main = do
    print $ makeDaysWithPrefix "This day is"
    print $
        let
            space = " "
            appender = \x -> "Dear" ++ space ++ x
        in
        map appender ["John","Anna","Andrew"]
    print $
        let
            dear_appender = (\x y -> x ++ " " ++ y) "Dear"
        in
        map dear_appender ["John", "Anna", "Andrew"]
    print $
        let
            space = " "
            appender = \x -> "Dear" ++ space ++ x
        in
        map appender ["John", "Anna", "Andrew"]
    print $
        let
            space = " "
            appender = \x -> "Dear" ++ space ++ x
            lst = map appender ["John", "Anna", "Andrew"]
        in length lst
    print $
        let
            earth_planet_name = "Earth"
            isPlanet = \x -> x `elem` ["Earth", "Jupiter"]
        in
        if isPlanet earth_planet_name
            then "Yes, " ++ earth_planet_name ++ " is a planet"
            else "No, " ++ earth_planet_name ++ " is not a planet"
    print $
        let
            addNewHostToFront = \x y -> x : y
            hosts = ["45.67.78.89", "123.45.65.54", "127.0.0.1"]
        in
        addNewHostToFront "124.67.54.90" hosts
    print $
        let
            addNewHostToBack = \x y -> y ++ [x]
            hosts = ["45.67.78.89", "123.45.65.54", "127.0.0.1"]
        in
        addNewHostToBack "124.67.54.90" hosts
    print $
        let
            notEmptyNameFilter = not . null
            removeAllEmptyNamesFrom = \x -> filter notEmptyNameFilter x
        in
        removeAllEmptyNamesFrom ["John", "", "Ann"]
    print $
        let
            removeAllEmptyNamesFrom = \x -> filter (not . null) x
        in
        removeAllEmptyNamesFrom ["John", "", "Ann"]
    print $ foldl (++) "http" ["://", "www", ".", "google.com"]
    print $ scanl (++) "http" ["://", "www", ".", "google.com"]
    print $ foldl (++) "" ["http", "://", "www", ".", "google.com"]
    print $ foldl1 (++) ["http", "://", "www", ".", "google.com"]
    print $ foldr (++) ".ua" ["http", "://", "www", ".", "google.com"]
    print $ scanr (++) ".ua" ["http", "://", "www", ".", "google.com"]
    print $
        let
            proto = "https"
        in
        foldr (++) "" [proto, "://", "www", ".", "google.com"]