module Router.Routes exposing (..)

import Browser.Navigation
import Url.Parser exposing ((</>), Parser, map, oneOf, parse, s, top)


type Page
    = Home
    | NotFound
    | WorkExperiencePage
    | TechnicalSkillsPage


routes : Parser (Page -> a) a
routes =
    oneOf
        [ map Home top
        , map NotFound (s "404")
        , map WorkExperiencePage (s "workexperience")
        , map TechnicalSkillsPage (s "technicalskills")
        ]


toPath : Page -> String
toPath page =
    case page of
        Home ->
            "/"

        NotFound ->
            "/404"

        WorkExperiencePage ->
            "/workexperience"

        TechnicalSkillsPage ->
            "/technicalskills"
