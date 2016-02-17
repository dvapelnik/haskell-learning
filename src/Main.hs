module Main where

import Text.Printf

data Date = Date { year::Int
                 , month::Int
                 , day::Int
                }

instance Show Date where
    show (Date year month day) = printf "%04d.%02d.%02d" year month day

data User = User { firstName
                 , lastName
                 , email::String
                 , birthDay
                 , registered::Date
                }

instance Show User where
    show (User firstName lastName email birthDay registered) =
        let
            birthDayString =  show birthDay
            registeredString = show registered
        in
        printf "%s %s <%s>, %s, %s" firstName lastName email birthDayString registeredString

changeEmail :: String -> User -> User
changeEmail newEmail user = user { email = newEmail }

main = do
    print $ user
    print . firstName $ user
    print . lastName $ user
    print . email $ user
    print . year . birthDay $ user
    print . month . birthDay $ user
    print . day . birthDay $ user
    print . email . changeEmail "new.jotan.martsen@gmail.com" $ user
    where user = User { firstName = "Jotan"
                      , lastName = "Martsen"
                      , email = "jotan.martsen@gmail.com"
                      , birthDay = Date { year = 1985
                                        , month = 5
                                        , day = 18
                                        }
                      , registered = Date { year = 2016
                                          , month = 2
                                          , day = 17
                                          }
                      }
