module L_03_RealFunctions where

doubleMeInt :: Int -> Int
doubleMeInt a = a + a

-- BEGIN OF "IP RESOLVING"
resolveIpIfThenElse :: String -> String
resolveIpIfThenElse address =
    if address == "127.0.0.1" then "localhost" else address

resolveIpMatched :: String -> String
resolveIpMatched "127.0.0.1" = "localhost"
resolveIpMatched address = address

resolveIpGuarded :: String -> String
resolveIpGuarded address
    | address == "127.0.0.1" = "localhost"
    | "" == address = "Empty IP"
    | null address  = "Empty IP"
    | otherwise = address
-- END OF "IP RESOLVING"

-- BEGIN OF "LENGTH CONVERTING"
lengthConversionSimple :: Double -> Double
lengthConversionSimple len = len * 0.8764 - 0.24

lengthConversionWithWhere :: Double -> Double
lengthConversionWithWhere len =
    len * coeff - delta
    where
        coeff = 0.8764
        delta = 0.24

lengthConversionWithLet :: Double -> Double
lengthConversionWithLet len =
    let
        coeff = 0.8764
        delta = 0.24
    in
    len * coeff - delta
-- END OF "LENGTH CONVERTING"