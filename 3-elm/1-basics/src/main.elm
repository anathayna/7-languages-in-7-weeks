module Main exposing (..)
import Browser
import Html exposing(div, text)
import String exposing(fromInt)

init =
    { value = 42 }

view model =
    div [] [text (fromInt model.value)]

update model =
    model

main =
    Browser.sandbox
        {
            init = init
            , view = view
            , update = update
        }

-- elm reactor to build and run (control + c to exit)