module PersonalProjects.Update exposing (..)

import PersonalProjects.Types exposing (..)
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
        Types.MsgForPersonalProjects msg ->
            updatePersonalProjects msg model

        _ ->
            return model Cmd.none


updatePersonalProjects : Msg -> Model -> Return Msg Model
updatePersonalProjects msg model =
    case msg of
        NoOp ->
            return model Cmd.none
