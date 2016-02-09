module L_07_FunctionAsArgument where

type TwoArgumentIntStrategy = Int -> Int -> Int

actor_executor :: TwoArgumentIntStrategy -> Int -> Int -> Int
actor_executor actor a b = actor a b

-- Usage
--print(let actor = \x y -> x + y in actor_executor actor 2 3)
--print(let actor = \x y -> x - y in actor_executor actor 2 3)
--print(let actor = \x y -> x * y - y + 2 * x in actor_executor actor 2 3)