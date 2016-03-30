module Main where

--Ниже приведено определение класса MapLike типов, похожих на тип Map.
--Определите представителя MapLike для типа ListMap, определенного ниже как список пар ключ-значение.
--Для каждого ключа должно храниться не больше одного значения.
--Функция insert заменяет старое значение новым, если ключ уже содержался в структуре.

import Prelude hiding (lookup)
import qualified Data.List as L

class MapLike m where
    empty :: m k v
    lookup :: Ord k => k -> m k v -> Maybe v
    insert :: Ord k => k -> v -> m k v -> m k v
    delete :: Ord k => k -> m k v -> m k v
    fromList :: Ord k => [(k,v)] -> m k v
    fromList [] = empty
    fromList ((k,v):xs) = insert k v (fromList xs)

newtype ListMap k v = ListMap { getListMap :: [(k,v)] }
    deriving (Eq,Show)

instance MapLike ListMap where
    empty = ListMap{getListMap=[]}
    lookup k table =
        let
            search_fn k [] = Nothing
            search_fn k ((x,y):xs) | k == x = Just y
                                   | otherwise = search_fn k xs
        in
        search_fn k (getListMap table)
    insert k v table =
        let
		    insVal k v [] = [(k,v)]
		    insVal k v ((x,y):xs) | k == x = ((k,v):xs)
                                  | otherwise = (x,y):(insVal k v xs)
        in
        table{getListMap = (insVal k v (getListMap table))}
    delete k table =
        let
            remKey k [] = []
            remKey k xs'@((x,y):xs) | k == x = xs
                                    | otherwise = ((x,y):(remKey k xs))
        in
        table{getListMap = (remKey k (getListMap table))}

main = do
    undefined
