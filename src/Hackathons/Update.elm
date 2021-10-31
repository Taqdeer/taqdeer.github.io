module Hackathons.Update exposing (..)

import Hackathons.Types exposing (..)
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
        Types.MsgForHackathons msg ->
            updateHackathons msg model

        _ ->
            return model Cmd.none


updateHackathons : Msg -> Model -> Return Msg Model
updateHackathons msg model =
    case msg of
        NoOp ->
            return model Cmd.none
