module Main exposing (Model)

import Binary as B exposing (..)
import Browser
import Element as E exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Events as Events
import Element.Font as Font



-- MODEL


type alias Model =
    { message : String
    }


init : Model
init =
    { message = "hello world" }



-- UPDATE


type Msg
    = ChangeMessageInput String


update : Msg -> Model -> Model
update msg model =
    case msg of
        ChangeMessageInput string ->
            { model | message = string }



-- VIEW


view : Model -> Html Msg
view model =
    div [] [ text ("hi this is elm the message is " ++ model.message) ]



-- Main


main =
    Browser.sandbox { init = init, update = update, view = view }
