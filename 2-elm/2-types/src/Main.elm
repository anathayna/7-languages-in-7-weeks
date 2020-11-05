module Main exposing (..)
import Html exposing (text)

main =
  text "Hello"


butterfly = "butter" ++ "fly"

multiline = 
  """
    multiline string
  """

listNames = ["Alice", "Bob", "Chuck"]
listNumbers = [2, 4, 6]

List.isEmpy listNames
List.lenght listNumbers
List.sort listNames

x = 1
x = x + 1 -- erro
xPlus = = x + 1

cm_to_pol : Float -> Float
cm_to_pol value = value * 0.3937

pol_to_cm : Float -> Float
pol_to_cm value = value * 2.54

jd_to_cm : Float -> Float
jd_to_cm value = value * 36.0

jd_to_pol : Float -> Float
jd_to_pol value = value * 91.44
    

-- always remember: elm init
-- elm make src/Main.elm -> index.html