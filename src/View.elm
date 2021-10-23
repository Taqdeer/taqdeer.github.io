module View exposing (renderRoute, view)

import Browser
import Cats.View
import Counter.View
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Events exposing (..)
import Element.Font as Font
import Element.Input exposing (button)
import Element.Region exposing (..)
import Router.Routes exposing (..)
import Router.Types exposing (Msg(..))
import Styles exposing (colors, fontStyles)
import Types exposing (..)


view : Model -> Browser.Document Types.Msg
view model =
    { title = "Taqdeer Grewal"
    , body =
        [ Element.layout [ Background.color colors.white ] <|
            el
                ([ centerX
                 , width fill
                 , height fill
                 , centerY
                 , width <| maximum 1000 fill
                 , Background.color colors.blue
                 , Border.shadow
                    { offset = ( 1, 1 )
                    , size = 6
                    , blur = 6
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
    column [ centerX, width fill, padding 60, spacing 50, Font.color colors.white ]
        [ row [ Font.size 40, Font.semiBold ] [ text "Taqdeer Grewal" ]
        , row [ centerX ] [ text "Technical Skills" ]
        , row [ centerX ] [ text "Work Experience" ]
        , row [ centerX ] [ text "Personal Projects" ]
        , row [ centerX ] [ text "Group Projects" ]
        , row [ centerX ] [ text "Hack Athons" ]
        , row [ centerX ] [ text "Education" ]
        , row [ centerX ] [ text "Relevant Courses" ]
        ]
