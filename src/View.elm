module View exposing (renderRoute, view)

import Browser
import Cats.View
import Counter.View
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Events exposing (..)
import Element.Font as Font
import Element.Region exposing (..)
import Html exposing (header)
import Router.Routes exposing (..)
import Router.Types exposing (Msg(..))
import Styles exposing (colors, fontStyles)
import Types exposing (..)


view : Model -> Browser.Document Types.Msg
view model =
    { title = "Taqdeer Grewal"
    , body =
        [ Element.layout [ Background.image "/images/test.jpeg", inFront <| header ] <|
            el
                ([ centerX
                 , width fill
                 , height fill
                 , centerY
                 , width <| maximum 1100 fill
                 , scrollbarY
                 , height <| maximum 1000 fill
                 , inFront <| header
                 , Border.shadow
                    { offset = ( 1, 1 )
                    , size = 3
                    , blur = 3
                    , color = colors.gray
                    }
                 ]
                    ++ fontStyles.standard
                )
                (renderRoute model)
        ]
    }


renderRoute : Model -> Element Types.Msg
renderRoute model =
    case model.router.page of
        Home ->
            homePageView

        NotFound ->
            text "404 Not Found"

        CatsPage ->
            Element.map MsgForCats (Cats.View.view model.cats)

        CounterPage ->
            Element.map MsgForCounter (Counter.View.view model.counter)


homePageView =
    column
        [ centerX
        , width fill
        , spacing 40
        , Font.color colors.white
        , inFront <| header
        , Background.color colors.blue
        ]
        [ header
        , column [ width fill, centerX, height <| minimum 300 fill, centerY, paddingXY 10 0 ]
            [ row [ width fill, Font.size 30, centerX, paddingXY 0 20 ] [ row [ centerX ] [ text "Technical Skills" ] ]
            , row [ width fill, Font.size 15, centerX ]
                [ column [ spacing 10, centerX, width fill ]
                    [ row [ centerX ] [ text "Full Proficiency" ]
                    , row [ centerX ] [ text "C++" ]
                    , row [ centerX ] [ text "Java" ]
                    , row [ centerX ] [ text "Javascript" ]
                    , row [ centerX ] [ text "Elm/Elm-UI" ]
                    , row [ centerX ] [ text "HTML5/CSS3" ]
                    ]
                , column [ spacing 10, centerX, width fill ]
                    [ row [ centerX ] [ text "Working Proficiency" ]
                    , row [ centerX ] [ text "C" ]
                    , row [ centerX ] [ text "NodeJS" ]
                    , row [ centerX ] [ text "Python" ]
                    , row [ centerX ] [ text "Assembly" ]
                    , row [ centerX ] [ text "React" ]
                    ]
                , column [ spacing 10, centerX, width fill ]
                    [ row [ centerX ] [ text "Other languages I have worked with" ]
                    , row [ centerX ] [ text "SQL" ]
                    , row [ centerX ] [ text "MongoDB" ]
                    , row [ centerX ] [ text "Event Sourcing" ]
                    , row [ centerX ] [ text "AngularJS" ]
                    , row [ centerX ] [ text "F#" ]
                    ]
                ]
            ]
        , column [ width fill, centerX, height <| minimum 300 fill, centerY, paddingXY 10 0 ]
            [ row [ width fill, Font.size 30, centerX, paddingXY 0 20 ] [ row [ centerX ] [ text "Work Experience" ] ]
            , row [ width fill, Font.size 15, centerX ]
                [ column [ spacing 10, centerX ]
                    [ Element.link
                        []
                        { url = "https://withflint.com/"
                        , label = Element.image [ width <| maximum 200 fill ] { src = "/images/flint.jpeg", description = "Flint" }
                        }
                    ]
                , column [ spacing 10, width fill, padding 20 ]
                    [ paragraph [] [ text <| "I worked as a full stack developer.I worked as a full stack developer.I worked as a full stack developer.I worked as a full stack developer.I worked as a full stack developer." ]
                    ]
                ]
            ]
        , column [ width fill, centerX, height <| minimum 500 fill, centerY, paddingXY 10 0 ]
            [ row [ width fill, Font.size 30, centerX, paddingXY 0 20 ] [ row [ centerX ] [ text "Personal Projects" ] ]
            , row [ width fill, Font.size 15, centerX, spacing 20 ]
                [ column [ spacing 10, centerX, width fill ]
                    [ image [ width fill, height <| maximum 200 fill ]
                        { src = "/images/score.jpeg"
                        , description = "score"
                        }
                    , row [ centerX ] [ text "Score" ]
                    , row [ centerX ] [ paragraph [] [ text "I did this project.I did this project.I did this project.I did this project.I did this project.I did this project.I did this project.I did this project.I did this project.I did this project.I did this project." ] ]
                    ]
                , column [ spacing 10, centerX, width fill ]
                    [ image [ width fill, height <| maximum 200 fill ]
                        { src = "/images/farmersMarket.jpeg"
                        , description = "farmersMarket"
                        }
                    , row [ centerX ] [ text "Farmers Market" ]
                    , row [ centerX ] [ paragraph [] [ text "I did this project. I did this project. I did this project.I did this project.I did this projectI did this project.I did this project.I did this project.I did this project.I did this project.I did this project." ] ]
                    ]
                , column [ spacing 10, centerX, width fill ]
                    [ image [ width fill, height <| maximum 200 fill ]
                        { src = "/images/rateMyCourse.jpeg"
                        , description = "rateMyCourse"
                        }
                    , row [ centerX ] [ text "Rate My Course" ]
                    , row [ centerX ] [ paragraph [] [ text "I did this project. I did this project. I did this project.I did this project.I did this projectI did this project.I did this project.I did this project.I did this project.I did this project.I did this project." ] ]
                    ]
                ]
            ]
        , row [ centerX ] [ text "Group Projects" ]
        , row [ centerX ] [ text "Hack Athons" ]
        , row [ centerX ] [ text "Education" ]
        , row [ centerX ] [ text "Relevant Courses" ]
        , row
            [ centerX
            , Background.color colors.blue
            , Border.shadow
                { offset = ( 1, 1 )
                , size = 6
                , blur = 6
                , color = colors.gray
                }
            , width fill
            , height <| px 200
            ]
            [ text "Work Experience" ]
        , row [ centerX ] [ text "Personal Projects" ]
        , row [ centerX ] [ text "Group Projects" ]
        , row [ centerX ] [ text "Hack Athons" ]
        , row [ centerX ] [ text "Education" ]
        , row [ centerX ] [ text "Relevant Courses" ]
        , row [ centerX ] [ text "Education" ]
        , row [ centerX ] [ text "Relevant Courses" ]
        , row [ centerX ] [ text "Work Experience" ]
        , row [ centerX ] [ text "Personal Projects" ]
        , row [ centerX ] [ text "Group Projects" ]
        , row [ centerX ] [ text "Hack Athons" ]
        , row [ centerX ] [ text "Education" ]
        , row
            [ centerX
            , Background.color colors.blue
            , Border.shadow
                { offset = ( 1, 1 )
                , size = 6
                , blur = 6
                , color = colors.gray
                }
            , width fill
            , height <| px 200
            ]
            [ text "Relevant Courses" ]
        , row [ centerX ] [ text "Education" ]
        ]


header : Element msg
header =
    row
        ([ Font.size 60
         , Font.semiBold
         , centerX
         , padding 60
         , Font.color colors.white
         , width <| maximum 1100 fill
         , Background.color colors.blue
         , Border.shadow
            { offset = ( 1, 1 )
            , size = 3
            , blur = 3
            , color = colors.gray
            }
         ]
            ++ fontStyles.standard
        )
        [ row [ centerX ] [ text "Taqdeer Grewal" ] ]
