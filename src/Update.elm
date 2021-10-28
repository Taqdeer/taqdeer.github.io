module Update exposing (andMapCmd, init, update)

import Browser.Navigation exposing (Key)
import Return exposing (Return, andMap, mapCmd, singleton)
import Router.Update
import TechnicalSkills.Update
import Types exposing (..)
import Url exposing (Url)
import WorkExperience.Update


init : flags -> (Url -> (Key -> Return Msg Model))
init _ url key =
    singleton Model |> andMapCmd MsgForRouter (Router.Update.init url key) |> andMapCmd MsgForWorkExperience WorkExperience.Update.init |> andMapCmd MsgForTechnicalSkills TechnicalSkills.Update.init


update : Msg -> (Model -> Return Msg Model)
update msg model =
    singleton Model |> andMapCmd MsgForRouter (Router.Update.update msg model.router) |> andMapCmd MsgForWorkExperience (WorkExperience.Update.update msg model.workexperience) |> andMapCmd MsgForTechnicalSkills (TechnicalSkills.Update.update msg model.technicalskills)


andMapCmd : (msg1 -> msg2) -> (Return msg1 model1 -> (Return msg2 (model1 -> model2) -> Return msg2 model2))
andMapCmd msg =
    andMap << mapCmd msg
