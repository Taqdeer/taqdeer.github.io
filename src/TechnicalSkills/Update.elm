module TechnicalSkills.Update exposing (..)

import TechnicalSkills.Types exposing (..)
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
        Types.MsgForTechnicalSkills msg ->
            updateTechnicalSkills msg model

        _ ->
            return model Cmd.none


updateTechnicalSkills : Msg -> Model -> Return Msg Model
updateTechnicalSkills msg model =
    case msg of
        NoOp ->
            return model Cmd.none
