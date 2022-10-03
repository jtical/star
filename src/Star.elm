--MVU Architecture (Elm Architecture)
--Model, View, Update
--Model /state
module Star exposing (main)

import Html exposing (..)
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)
import Browser

--stores all images in baseUrl
baseUrl : String
baseUrl = 
    "images/"

type Msg =
    Like | Unlike

initialModel : { url : String, caption : String, liked : Bool}
initialModel = 
    {
        url = baseUrl ++ "star.jpg"
        ,caption = "Stars"
        ,liked = False
    }

viewPhoto : { url : String, caption : String, liked : Bool} -> Html Msg
viewPhoto model =
    let
        buttonType =
            if model.liked then "star" else "star_half"
        msg =
            if model.liked then Unlike else Like   
    in

    div [ class "detailed-photo" ]
            [
                img [ src model.url ] []
                ,div [ class "photo-info" ]
                [ div [ class "star-button" ]
                    [ span
                        [ class "material-icons md-48", onClick msg] 
                        [ text buttonType ]
                    ]
                ]
                ,h2 [ class "caption" ] [ text model.caption ] 
            ]

view : { url : String, caption : String, liked : Bool } -> Html Msg
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

update : Msg -> { url : String, caption : String, liked : Bool } -> { url : String, caption : String, liked : Bool }
update msg model = 
    case msg of 
        Like ->
            { model | liked = True }
        Unlike ->
            { model | liked = False }


main : Program () { url : String, caption : String, liked : Bool } Msg
main = 
    Browser.sandbox
    {
        init = initialModel
        ,view = view
        ,update = update
    }