module TechnicalSkills.View exposing (..)

import Element exposing (..)
import Element.Font as Font
import Layout exposing (..)
import Router.Routes exposing (Page(..))
import Styles exposing (..)
import TechnicalSkills.Types exposing (..)


view : Model -> Element Msg
view model =
    Layout.layout "Skills" content


content =
    row [ width fill, spacingXY 80 0 ]
        [ column [ width fill, spacing 20 ]
            [ row [ width fill, Font.alignLeft, Font.size 25, Font.bold ] [ text "Technical Skills " ]
            , column [ width fill, spacingXY 0 5 ]
                [ row [ width fill, Font.alignLeft, Font.size 15 ] [ text "Full Proficiency in languages" ]
                , row [ width fill, Font.alignLeft, Font.size 15 ] [ text "C++, JavaScript, Java, Elm, F#, HTML5, CSS3" ]
                ]
            , column [ width fill, spacingXY 0 5 ]
                [ row [ width fill, Font.alignLeft, Font.size 15 ] [ text "Working Proficiency in languages" ]
                , row [ width fill, Font.alignLeft, Font.size 15 ] [ text "Python, jQuery, React, C, NodeJS, Assembly" ]
                ]
            , column [ width fill, spacingXY 0 5 ]
                [ row [ width fill, Font.alignLeft, Font.size 15 ] [ text "Databases" ]
                , row [ width fill, Font.alignLeft, Font.size 15 ] [ text "SQL, MongoDB, Oracle" ]
                ]
            ]
        , column [ width fill, spacing 20 ]
            [ row [ width fill, Font.alignLeft, Font.size 25, Font.bold ] [ text "Soft Skills " ]
            , row [ width fill, Font.size 15 ]
                [ text "Fast learner"
                ]
            , row [ width fill, Font.size 15 ]
                [ text "Clean Coder"
                ]
            , row [ width fill, Font.size 15 ]
                [ text "Results oriented"
                ]
            , row [ width fill, Font.size 15 ]
                [ text "Effective communicator"
                ]
            , row [ width fill, Font.size 15 ]
                [ text "Great in pair programming and team work"
                ]
            ]
        ]
