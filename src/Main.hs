
module Main where

import Prelude hiding (repeat)

repeat = iterate repeatHelper
repeatHelper = \x -> x

main = do
    print . show $ take 10 $ repeat 1
    print . show $ take 10 $ repeat 'z'
    print . show $ take 10 $ repeat "abc"