module Layout exposing (..)

import Browser
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Events exposing (..)
import Element.Font as Font
import Element.Region exposing (..)
import Router.Routes exposing (..)
import Router.Types exposing (Msg(..))
import Styles exposing (colors, fontStyles)


layout pageName content=
    row [ width fill, height fill, centerX, centerY ]
        [ column
            [ width <| maximum 400 fill
            , height fill
            , centerY
            , Background.color colors.blue
            , Font.color colors.white
            , Border.shadow
                { offset = ( 2, 2 )
                , size = 3
                , blur = 5
                , color = colors.gray
                }
            ]
            [ row [ centerX, Font.size 50, padding 50 ] [ text "Taqdeer Grewal" ]
            , row [ width fill, centerX, centerY ]
                [ column [ width fill, centerX, centerY, spacingXY 0 40 ]
                    [ row [ centerX, centerY, mouseOver [Font.color colors.gray] ]
                        [ link []
                            { url = toPath TechnicalSkillsPage
                            , label = text "Technical Skills"
                            }
                        ]
                    , row [ centerX, centerY , mouseOver [Font.color colors.gray]]
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
        , column [ width fill, height fill ]
            [ row
                [ alignTop
                , paddingEach {top = 50, left = 50, right = 50, bottom = 20}
                , Font.size 35
                , Border.widthEach { top = 0, left = 0, right = 0, bottom = 1 }
                , Border.color colors.gray
                , width fill
                , Border.shadow
                { offset = ( 1, 1 )
                , size = 1
                , blur = 5
                , color = colors.gray
                }
                ]
                [ row [ alignRight ] [ text pageName ] ]
            , row [ centerX, centerY ] [ content ]
            ]
        ]
