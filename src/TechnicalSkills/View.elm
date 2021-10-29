module TechnicalSkills.View exposing (..)

import TechnicalSkills.Types exposing (..)
import Element exposing (..)
import Styles exposing (..)
import Styles exposing (..)
import Router.Routes exposing (Page(..))
import  Layout exposing (..)
view : Model -> Element Msg
view model =
          Layout.layout "Technical Skills" content
          

content =
    column [ width fill, spacing 20 ]
        [ row [] [ text "C++" ]
        , row [] [ text "Python" ]
        , row [] [ text "JavaScript" ]
        , row [] [ text "Java" ]
        ]
