--MVU Architecture (Elm Architecture)
--Model, View, Update
--Model /state
module Star exposing (main)

import Html exposing (..)
import Html.Attributes exposing (class, src)

--stores all images in baseUrl
baseUrl : String
baseUrl = 
    "images/"

initialModel : { url : String, caption : String}
initialModel = 
    {
        url = baseUrl ++ "star.jpg"
        ,caption = "Stars"
    }

viewPhoto : { url : String, caption : String } -> Html msg
viewPhoto model =
    div [ class "detailed-photo" ]
            [
                img [ src model.url ] []
                ,div [ class "photo-info" ]
                [ h2 [ class "caption" ] [ text model.caption ] ]
            ]

view : { url : String, caption : String} -> Html msg
view model = 
    div []
    [
        div [ class "header" ]
        [ h1 [] [ text "Star" ] ]
        ,div [ class "content-flow" ]
        [
            viewPhoto model
        ]
    ]

main : Html msg
main = 
    view initialModel