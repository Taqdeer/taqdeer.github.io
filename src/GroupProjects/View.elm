module GroupProjects.View exposing (..)

import Element exposing (..)
import Element.Font as Font
import GroupProjects.Types exposing (..)
import Layout exposing (..)
import Styles exposing (..)


view : Model -> Element Msg
view model =
    Layout.layout "Group Projects" content


content =
    column [ width fill, spacingXY 0 40 ]
        [ row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 10, width fill ]
                [ row [ Font.bold, alignLeft ] [ text "RateMyPolitician" ]
                , row [ alignLeft ] [ text "SQL, JS, HTML5, CSS3" ]
                , column [ alignLeft, width fill, spacingXY 0 20 ]
                    [ paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "The project is a website designed for Canadians to rate various Canadian politicians which will be helpful for them to make the right decision while voting." ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "My major contribution in the project is implementing four different pages and adding Bootstrap designs of CSS. Thus, I have worked with both front-end and back-end software of the project." ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "This is a course-based group project and has been implemented to demonstrate the skills of SQL. The frontend has been designed in JavaScript, HTML5, CSS and backend uses NodeJS, Express, SQL and Oracle. GitHub was used for version control and collaboration. " ]
                    ]
                ]
            ]
        , row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 10, width fill ]
                [ row [ Font.bold, alignLeft ] [ text "RateMyCourse" ]
                , row [ alignLeft ] [ text "HTML5, CSS3" ]
                , column [ alignLeft, width fill, spacingXY 0 20 ]
                    [ paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "The project is an inspiration from RateMyProfessor website. Instead of rating a professor, it allows user to rate the courses at different colleges or universities. " ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "User can provide rating from 1-5 based on how easy or how hard it was to pass the course. User can also provide personal comments like what new material they learnt from the course and with whom they took it with. " ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "My major contribution is the project’s frontend which has been implemented in HTML5 with Bootstrap framework of CSS. " ]
                    ]
                ]
            ]
        ]
