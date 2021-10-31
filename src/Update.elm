module Update exposing (andMapCmd, init, update)

import Browser.Navigation exposing (Key)
import Education.Update
import GroupProjects.Update
import Hackathons.Update
import PersonalProjects.Update
import Return exposing (Return, andMap, mapCmd, singleton)
import Router.Update
import TechnicalSkills.Update
import Types exposing (..)
import Url exposing (Url)
import WorkExperience.Update


init : flags -> (Url -> (Key -> Return Msg Model))
init _ url key =
    singleton Model |> andMapCmd MsgForRouter (Router.Update.init url key) |> andMapCmd MsgForWorkExperience WorkExperience.Update.init |> andMapCmd MsgForTechnicalSkills TechnicalSkills.Update.init |> andMapCmd MsgForPersonalProjects PersonalProjects.Update.init |> andMapCmd MsgForGroupProjects GroupProjects.Update.init |> andMapCmd MsgForEducation Education.Update.init |> andMapCmd MsgForHackathons Hackathons.Update.init


update : Msg -> (Model -> Return Msg Model)
update msg model =
    singleton Model |> andMapCmd MsgForRouter (Router.Update.update msg model.router) |> andMapCmd MsgForWorkExperience (WorkExperience.Update.update msg model.workexperience) |> andMapCmd MsgForTechnicalSkills (TechnicalSkills.Update.update msg model.technicalskills) |> andMapCmd MsgForPersonalProjects (PersonalProjects.Update.update msg model.personalprojects) |> andMapCmd MsgForGroupProjects (GroupProjects.Update.update msg model.groupprojects) |> andMapCmd MsgForEducation (Education.Update.update msg model.education) |> andMapCmd MsgForHackathons (Hackathons.Update.update msg model.hackathons)


andMapCmd : (msg1 -> msg2) -> (Return msg1 model1 -> (Return msg2 (model1 -> model2) -> Return msg2 model2))
andMapCmd msg =
    andMap << mapCmd msg
