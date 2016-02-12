module Main where

import Data.List
import Data.String.Utils
import Data.Tuple.Extra
import Data.Tuple.Select

chessMoveFstSec :: (String, String) -> String
chessMoveFstSec pair = fst pair ++ "-" ++ snd pair

chessMovePatternMatching :: (String, String) -> String
chessMovePatternMatching (f, s) = f ++ "-" ++ s

get31 :: (String, String, String) -> String
get31 (elem, _, _) = elem

get32 :: (String, String, String) -> String
get32 (_, elem, _) = elem

get33 :: (String, String, String) -> String
get33 (_, _, elem) = elem


main = do
    print "Parallel composition opetaror"
    print (succ *** reverse  $(2, "text"))
    print "Fst ans Sec of pair"
    print $ chessMoveFstSec ("e2", "e4")
    print "Pattern matching using"
    print $ chessMovePatternMatching ("e2", "e4")
    print "Own getNI"
    print $ get31 ("One", "Two", "Three")
    print $ get32 ("One", "Two", "Three")
    print $ get33 ("One", "Two", "Three")
    print "selI from select package"
    print $ sel1 ("One", "Two", "Three")
    print $ sel2 ("One", "Two", "Three")
    print $ sel3 ("One", "Two", "Three")