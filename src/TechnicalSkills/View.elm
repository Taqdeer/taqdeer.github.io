module TechnicalSkills.View exposing (..)

import Element exposing (..)
import Element.Font as Font
import Layout exposing (..)
import Router.Routes exposing (Page(..))
import Styles exposing (..)
import TechnicalSkills.Types exposing (..)


view : Model -> Element Msg
view model =
    Layout.layout "Technical Skills" content


content =
    column [ width fill, spacingXY 0 40 ]
        [ row [ alignLeft ]
            [ column [ alignLeft, spacing 10 ]
                [ row [ Font.bold, alignLeft ] [ text "Full Proficiency in languages" ]
                , row [ alignLeft ] [ text "C++, JavaScript, Java, Elm, F#, HTML5, CSS3" ]
                ]
            ]
        , row [ alignLeft ]
            [ column [ alignLeft, spacing 10 ]
                [ row [ Font.bold, alignLeft ] [ text "Working knoweledge" ]
                , row [ alignLeft ] [ text "Python, jQuery, React, C, NodeJS, Assembly" ]
                ]
            ]
        , row [ alignLeft ]
            [ column [ alignLeft, spacing 10 ]
                [ row [ Font.bold, alignLeft ] [ text "Databases" ]
                , row [ alignLeft ] [ text "SQL, MongoDB, Oracle" ]
                ]
            ]
        ]
