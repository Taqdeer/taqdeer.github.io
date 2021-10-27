module Types exposing (..)

import Cats.Types
import Counter.Types
import Router.Types
import WorkExperience.Types


type alias Model =
    { router : Router.Types.Model, cats : Cats.Types.Model, counter : Counter.Types.Model, workexperience : WorkExperience.Types.Model }


type Msg
    = MsgForRouter Router.Types.Msg
    | MsgForCats Cats.Types.Msg
    | MsgForCounter Counter.Types.Msg
    | MsgForWorkExperience WorkExperience.Types.Msg