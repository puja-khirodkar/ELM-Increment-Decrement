module Main exposing (..)

import Browser
import Html exposing (Html, button, text, div)
import Html.Events exposing (onClick)
import Html.Attributes exposing (align)

main =
    Browser.sandbox { init = init, view = view, update = update}


type alias Model = Int

type Msg =
    Increment
    | Decrement




init: Model
init  =
    0

view : Model -> Html.Html Msg
view model =
    Html.div[align "center"]
    [
        Html.button [Html.Events.onClick Decrement] [Html.text "-"]
        , Html.div[][Html.text (String.fromInt model)]
        , Html.button [Html.Events.onClick Increment] [Html.text "+"]
    ]


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1
