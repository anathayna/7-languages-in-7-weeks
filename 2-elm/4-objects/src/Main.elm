module Main exposing (..)
import Html exposing(..)

type alias Point =
    {
        x: Float,
        y: Float
    }

point = Point 3 4
point.x
newPoint = { point | x=3 }

point = { x=0, y=2 }
newPoint = { x="0", y="0" }
point = newPoint

reverseUpperCase = String.toUpper >> String.reverse 
reverseUpperCase "pororoca"

origin = { x=0, y=0 }
point = { x=2, y=2 }

increment func = { point | x = point.x +1, y = point.y +1 }
increment point

type alias Person a = { a | name: String, address: String }

changeName: String -> Person a -> Person a 
changeName newName person = 
    { person | name = newName }

people = { name = "a", address = "la" }
changeName "b" people

type MaybeData a = YesData a | NoData
hd xs = case xs of \
    x::_ -> YesData x \
    [] -> NoData

hd ['a','b','c']
hd ["a","b","c"]
hd [1,2,3]
hd []