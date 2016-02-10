module Main where

import Data.Char
import Data.List
import Data.String.Utils

x |> f = f x

addPrefix :: String -> String
addPrefix url =
    if prefix `isPrefixOf` url then url else prefix ++ url
--    Also also may be uses as
--    if prefix `isPrefixOf` url then url else prefix ++ url
    where prefix = "http://"

encodeAllSpaces = replace " " "%20"

makeItLowerCase = map toLower

main = do
    putStrLn (addPrefix(encodeAllSpaces(makeItLowerCase url)))
    -- function composition
    putStrLn ((addPrefix . encodeAllSpaces . makeItLowerCase) url)
    -- function application
    putStrLn (addPrefix $ encodeAllSpaces $ makeItLowerCase url)
    -- function composition combined with function application
    putStrLn $ addPrefix . encodeAllSpaces . makeItLowerCase $ url
    -- also with function 'x |> f = f x' as
    url |> makeItLowerCase |> encodeAllSpaces |> addPrefix |> putStrLn
    where url = "www.SITE.com/test me/Start page"
