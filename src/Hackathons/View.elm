module Hackathons.View exposing (..)

import Element exposing (..)
import Element.Font as Font
import Hackathons.Types exposing (..)
import Layout exposing (..)
import Styles exposing (..)


view : Model -> Element Msg
view model =
    Layout.layout "Hackathons" content


content =
    column [ width fill, spacingXY 0 40 ]
        [ row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 20, width fill ]
                [ row [ Font.bold, alignLeft ] [ text "LumoHacks" ]
                , row [ alignLeft ] [ text "Major League Hacking (SFU)" ]
                , column [ width fill, Font.size 15, spacingXY 0 20 ]
                    [ paragraph [ width fill, Font.alignLeft ] [ text "Participated in two hackathons under Major League Hacking at SFU campus in a team. " ]
                    , paragraph [ width fill, Font.alignLeft ] [ text "Won Wolfram Alpha Award in one of the hackathons for implementing a project. The project’s motive is to pay tribute to the retired policemen and soldiers to improve their mental health. " ]
                    ]
                ]
            ]
        ]
