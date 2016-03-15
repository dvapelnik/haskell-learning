
module Main where

perms            :: [a] -> [[a]]
perms xs0        =  xs0 : perms' xs0 []
  where
    perms' []     _  = []
    perms' (t:ts) is = foldr interleave (perms' ts (t:is)) (perms is)
      where interleave    xs     r = let (_,zs) = interleave' id xs r in zs
            interleave' _ []     r = (ts, r)
            interleave' f (y:ys) r = let (us,zs) = interleave' (f . (y:)) ys r
                                     in  (y:us, f (t:y:us) : zs)

main = do
    print . show $ perms [0, 1, 2]