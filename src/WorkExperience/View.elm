module WorkExperience.View exposing (view)

import Element exposing (..)
import Element.Events exposing (..)
import Element.Font as Font
import Layout
import RemoteData exposing (..)
import Router.Routes exposing (Page(..))
import Styles exposing (..)
import WorkExperience.Types exposing (..)


view : Model -> Element Msg
view model =
    Layout.layout "Work Experience" content


content =
    column [ width fill, spacingXY 0 50 ]
        [ row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 10, width fill ]
                [ row [ Font.bold, alignLeft ] [ text "Flint" ]
                , row [ alignLeft, Font.size 16 ] [ text "Sept 2021 - Present" ]
                , row [ alignLeft ] [ text "Full Stack Software Developer" ]
                , column [ alignLeft, width fill, spacingXY 0 20 ]
                    [ paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text " Developed the front end, client facing website https://www.withflint.com using Elm which resulted in the promotion of Flint's face in a creative manner." ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text " Developed backend in F# to route applications of new candidates directly to the concerned supervisor using SMTP services of Google. Hence simplifying the shortlisting procedure. " ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text " Created and implemented an order's page for the Flint team in order for them to be able to place business related orders internally which substantially increased the efficiency quotient. " ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text " One of the biggest challenges and learning curve which I passed was that I learnt Functional programming within a span of three weeks which in turn got identified as an imperative asset by the software team at Flint. " ]
                    ]
                ]
            ]
        , row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 10, width fill ]
                [ row [ Font.bold, alignLeft ] [ text "Langara College" ]
                , row [ alignLeft, Font.size 16 ] [ text "Jan 2016 - Aug 2021" ]
                , row [ alignLeft ] [ text "Teaching Assistant" ]
                , column [ alignLeft, width fill, spacingXY 0 20 ]
                    [ paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "Marked labs by testing code and give specific and detailed feedbacks to students about their mistakes which improve their programming skills significantly. " ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "Tutored students in small groups as well as individually which boosts up their confidence and knowledge and improve their team-work skills. " ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "Conducted live question-answer sessions with students to detect plagiarism and understand their knowledge of the concepts" ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "Read 50 assignments with at least 50 lines of code per week which has improved my code debugging skills substantially" ]
                    ]
                ]
            ]
        ]
