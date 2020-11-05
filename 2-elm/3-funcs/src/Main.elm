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

List.map ((+) 3) [1,2]
reduce list = List.foldl (\x init -> init + x) 0 list
List.filter ((<) 3) [1,2,3,4,5,6]

fatorial : Int -> Int
fatorial n =
    case n of
    0 -> 0
    1 -> 1
    _ -> n * fatorial (n-1)

fatorial 5

cilindro r h =
    let 
     sideArea = 2 * pi * r * h
     topArea = pi * r * r 
    in 
     sideArea + 2 * topArea

cilindro 2 4

String.join "-" ["a", "b", "c"]
["a", "b", "c"] |> String.join "-"
["a", "b", "c"] |> List.reverse |> String.join "-"

curry x y z = x * y * z
curry 2
curry 2 4
curry 2 4 6

mult x y = x * y
mult 3 4 
mult 3

multThree = mult 3
multThree 4

repeat3x = String.repeat
repeat3x "hello"

increment n =
    let valueIncrement = n 
    in ((+) valueIncrement)

incrementTwo = increment 2
incrementTwo 4
incrementTwo = increment 4
incrementTwo 6

firstChar str = 
    str |> String.toList |> List.head 

firstCharFirstElem list =
    list 
    |> List.head 
    |> Maybe.andThen firstChar

firstChar ["a", "b", "c"]
firstChar [""]