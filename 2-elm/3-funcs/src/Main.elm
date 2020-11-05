module Main exposing (..)
import Html exposing(..)

plusTwo x = x + 2
plusTwo 2

any func param = func param
any plusTwo 4

plusThree x = x + 3
any plusThree 4

head : List a -> Maybe a
head list case list of 
    [] -> Nothing
    (x::xs) -> Just x

case List.head [1,2,3,4] of \
    Nothing -> "is empty!!" \
    Just a -> "yas! the head value is" ++ String.fromInt a

case List.head [] of \
    Nothing -> "is empty!!" \
    Just a -> "yas! the head value is" ++ String.fromInt a

