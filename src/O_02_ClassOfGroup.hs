module O_02_ClassOfGroup where

class MyGroup a where
    e   :: a
    (+) :: a -> a -> a
    inv :: a -> a