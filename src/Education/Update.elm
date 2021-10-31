module Education.Update exposing (..)

import Education.Types exposing (..)
import Return exposing (Return, return)
import Types


init : Return Msg Model
init =
    return
        { sample = ""
        }
        Cmd.none


update : Types.Msg -> Model -> Return Msg Model
update msgFor model =
    case msgFor of
        Types.MsgForEducation msg ->
            updateEducation msg model

        _ ->
            return model Cmd.none


updateEducation : Msg -> Model -> Return Msg Model
updateEducation msg model =
    case msg of
        NoOp ->
            return model Cmd.none
