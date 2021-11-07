module WorkExperience.Update exposing (..)

import Return exposing (Return, return)
import Types
import WorkExperience.Types exposing (..)


init : Return Msg Model
init =
    return
        { sample = ""
        }
        Cmd.none


update : Types.Msg -> Model -> Return Msg Model
update msgFor model =
    case msgFor of
        Types.MsgForWorkExperience msg ->
            updateWorkExperience msg model

        _ ->
            return model Cmd.none


updateWorkExperience : Msg -> Model -> Return Msg Model
updateWorkExperience msg model =
    case msg of
        NoOp ->
            return model Cmd.none
