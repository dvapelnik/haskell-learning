module Main where

--Реализуйте представителя MapLike для типа ArrowMap, определенного ниже.

import Prelude hiding (lookup)

class MapLike m where
    empty :: m k v
    lookup :: Ord k => k -> m k v -> Maybe v
    insert :: Ord k => k -> v -> m k v -> m k v
    delete :: Ord k => k -> m k v -> m k v
    fromList :: Ord k => [(k,v)] -> m k v

newtype ArrowMap k v = ArrowMap { getArrowMap :: k -> Maybe v }

instance MapLike ArrowMap where
    empty = ArrowMap{getArrowMap = (\k -> Nothing)}
    lookup k tbl = getArrowMap tbl $ k
    insert k v tbl =
        let
            arrMap x | k == x = Just v
                     | otherwise = (getArrowMap tbl) x
        in
        tbl {getArrowMap=arrMap}
    delete k tbl =
        let
            arrMap x | k == x = Nothing
                     | otherwise = (getArrowMap tbl) x
        in
        tbl {getArrowMap = arrMap}
    fromList xs =
        let
            fromList' [] arrowMap = arrowMap
            fromList' ((k,v):xs) arrowMap = fromList' xs (insert k v arrowMap)
        in
        fromList' xs empty

main = do
    undefined
