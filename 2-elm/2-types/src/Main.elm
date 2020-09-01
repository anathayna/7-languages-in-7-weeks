module Main exposing (..)
import Html exposing (..)

main =
  div []
    [ h1 [] [ text "My Grocery List" ]
    , ul []
        [ li [] [ text "type a value in the Inches field to convert the value to Yards:" ]
        ]
    ]

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