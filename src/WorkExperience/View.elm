module WorkExperience.View exposing (view)

import WorkExperience.Types exposing (..)
import Element exposing (..)
import Element.Events exposing (..)
import RemoteData exposing (..)
import Styles exposing (..)
import Router.Routes exposing (Page(..))
import Layout


view : Model -> Element Msg
view model =
    Layout.layout "Work Experience" content
          

content = column [ width fill, spacing 20 ]
        [ row [] [ text "Flint" ]
        , row [] [ text "Langara College" ]
        ]
