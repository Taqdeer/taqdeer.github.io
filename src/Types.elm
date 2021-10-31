module Types exposing (..)

import Education.Types
import GroupProjects.Types
import Hackathons.Types
import PersonalProjects.Types
import Router.Types
import TechnicalSkills.Types
import WorkExperience.Types


type alias Model =
    { router : Router.Types.Model, workexperience : WorkExperience.Types.Model, technicalskills : TechnicalSkills.Types.Model, personalprojects : PersonalProjects.Types.Model, groupprojects : GroupProjects.Types.Model, education : Education.Types.Model, hackathons : Hackathons.Types.Model }


type Msg
    = MsgForRouter Router.Types.Msg
    | MsgForWorkExperience WorkExperience.Types.Msg
    | MsgForTechnicalSkills TechnicalSkills.Types.Msg
    | MsgForPersonalProjects PersonalProjects.Types.Msg
    | MsgForGroupProjects GroupProjects.Types.Msg
    | MsgForEducation Education.Types.Msg
    | MsgForHackathons Hackathons.Types.Msg
