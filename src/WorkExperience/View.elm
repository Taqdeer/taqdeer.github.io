module WorkExperience.View exposing (..)

import WorkExperience.Types exposing (..)
import Element exposing (..)
import Styles exposing (..)
import Element.Background as Background
import Element.Font as Font
import Router.Routes exposing (..)
import Router.Types exposing (Msg(..))
view : Model -> Element Msg
view model =
    row [ width fill, height fill, centerX, centerY ]
        [ column [ width <| maximum 500 fill, height fill, centerY, padding 20, Background.color colors.blue, Font.color colors.white ]
            [ row [ centerX, Font.size 60, padding 50 ] [ text "Taqdeer Grewal" ]
            , row [ width fill, centerX, centerY ]
                [ column [ width fill, centerX, centerY, spacingXY 0 40 ]
                    [ row [ centerX, centerY ] [ text "Technical Skills" ]
                    , row [ centerX, centerY ]
                        [ link []
                            { url = toPath WorkExperiencePage
                            , label = text "Work Experience"
                            }
                        ]
                    , row [ centerX, centerY ] [ text "Personal Projects" ]
                    , row [ centerX, centerY ] [ text "Group Projects" ]
                    , row [ centerX, centerY ] [ text "Education" ]
                    , row [ centerX, centerY ] [ text "Hackathons" ]
                    ]
                ]
            ]
        , column [ width fill, centerX ] [ row [ centerX ] [ text "Taqdeer" ] ]
        ]