module Router.Routes exposing (..)

import Browser.Navigation
import Url.Parser exposing ((</>), Parser, map, oneOf, parse, s, top)


type Page
    = Home
    | NotFound
    | WorkExperiencePage
    | TechnicalSkillsPage
    | PersonalProjectsPage
    | GroupProjectsPage
    | EducationPage
    | HackathonsPage


routes : Parser (Page -> a) a
routes =
    oneOf
        [ map Home top
        , map NotFound (s "404")
        , map WorkExperiencePage (s "workexperience")
        , map TechnicalSkillsPage (s "technicalskills")
        , map PersonalProjectsPage (s "personalprojects")
        , map GroupProjectsPage (s "groupprojects")
        , map EducationPage (s "education")
        , map HackathonsPage (s "hackathons")
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

        PersonalProjectsPage ->
            "/personalprojects"

        GroupProjectsPage ->
            "/groupprojects"

        EducationPage ->
            "/education"

        HackathonsPage ->
            "/hackathons"
