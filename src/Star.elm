module Star exposing (main)

import Html exposing (..)
import Html.Attributes exposing (class, src)

main : Html msg 
main = 
    div []
    [
        div [ class "header" ]
        [ h1 [] [ text "Star" ] ]
        ,div [ class "content-flow" ]
        [
            div [ class "detailed-photo" ]
            [
                img [ src "star.jpg" ] []
                ,div [ class "photo-info" ]
                [ h2 [ class "caption" ] [ text "Star" ] ]
            ]
        ]
    ]