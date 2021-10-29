module View exposing (renderRoute, view)

import Browser
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Events exposing (..)
import Element.Font as Font
import Element.Region exposing (..)
import Layout exposing (..)
import Router.Routes exposing (..)
import Router.Types exposing (Msg(..))
import Styles exposing (colors, fontStyles)
import TechnicalSkills.View
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

        WorkExperiencePage ->
            Element.map MsgForWorkExperience (WorkExperience.View.view model.workexperience)

        TechnicalSkillsPage ->
            Element.map MsgForTechnicalSkills (TechnicalSkills.View.view model.technicalskills)


homePageView =
    Layout.layout "Taqdeer Grewal" content


content =
    column [ width fill, spacing 20 ]
        [ row [] [ text "Taqdeer" ]
       
        ]
