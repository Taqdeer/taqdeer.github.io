module GroupProjects.Update exposing (..)

import GroupProjects.Types exposing (..)
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
        Types.MsgForGroupProjects msg ->
            updateGroupProjects msg model

        _ ->
            return model Cmd.none


updateGroupProjects : Msg -> Model -> Return Msg Model
updateGroupProjects msg model =
    case msg of
        NoOp ->
            return model Cmd.none
