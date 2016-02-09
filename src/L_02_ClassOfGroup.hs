module L_02_ClassOfGroup where

class MyGroup a where
    e   :: a
    inv :: a -> a