module Star exposing (main)

import Html exposing (h1, Html, div, text)
import Html.Attributes exposing (class)

main : Html msg 
main = 
    div [ class "header"] 
        [ h1 [] [ text "Star"]]