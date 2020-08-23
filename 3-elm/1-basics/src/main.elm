module Main exposing (..)
import Browser
import Html exposing(div, text)

init =
    { value = 0 }

view model =
    div [] [text "hello!"]

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