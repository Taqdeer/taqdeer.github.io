module Education.View exposing (..)

import Education.Types exposing (..)
import Element exposing (..)
import Element.Font as Font
import Layout exposing (..)
import Styles exposing (..)


view : Model -> Element Msg
view model =
    Layout.layout "Education" content


content =
    column [ width fill, spacingXY 0 40 ]
        [ row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 10, width fill ]
                [ row [ Font.bold, alignLeft ] [ text "Bachelor of Science : Computer Science" ]
                , row [ alignLeft ] [ text "University of British Columbia" ]
                ]
            ]
        , row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 10, width fill ]
                [ row [ Font.bold, alignLeft ] [ text "Associate Degree : Computer Science" ]
                , row [ alignLeft ] [ text "Langara College" ]
                ]
            ]
        , row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 10, width fill ]
                [ row [ Font.bold, alignLeft ] [ text "Relevant Courses" ]
                , column [ alignLeft, Font.size 15 ] [ paragraph [ width fill, Font.alignLeft ] [ text "Computations, Program and Programming, Models of Computation, Software Construction, Introduction to Computer Systems, Basic Algorithms and Data structures, Introduction to Relational Databases, Object Oriented Computing" ] ]
                ]
            ]
        ]
