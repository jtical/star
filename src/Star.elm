module Star exposing (main)

import Html exposing (..)
import Html.Attributes exposing (class, src)

viewPhoto : String -> String -> Html msg
viewPhoto url caption =
    div [ class "detailed-photo" ]
            [
                img [ src url ] []
                ,div [ class "photo-info" ]
                [ h2 [ class "caption" ] [ text caption ] ]
            ]

main : Html msg 
main = 
    div []
    [
        div [ class "header" ]
        [ h1 [] [ text "Star" ] ]
        ,div [ class "content-flow" ]
        [
            viewPhoto "star.jpg" "Stars"
        ]
    ]