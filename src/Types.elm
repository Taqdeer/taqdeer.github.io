module Types exposing (..)

import Router.Types
import TechnicalSkills.Types
import WorkExperience.Types


type alias Model =
    { router : Router.Types.Model, workexperience : WorkExperience.Types.Model, technicalskills : TechnicalSkills.Types.Model }


type Msg
    = MsgForRouter Router.Types.Msg
    | MsgForWorkExperience WorkExperience.Types.Msg
    | MsgForTechnicalSkills TechnicalSkills.Types.Msg
