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
import Router.Routes exposing (..)
import Router.Types exposing (Msg(..))
import Styles exposing (colors, fontStyles)
import Types exposing (..)
import WorkExperience.View


view : Model -> Browser.Document Types.Msg
view model =
    { title = "Taqdeer Grewal"
    , body =
        [ Element.layout [] <|
            el
                ([ centerX
                 , width fill
                 , height fill
                 , centerY
                 , width fill
                 , scrollbarY
                 , height fill
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

        WorkExperiencePage ->
            Element.map MsgForWorkExperience (WorkExperience.View.view model.workexperience)


homePageView =
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
