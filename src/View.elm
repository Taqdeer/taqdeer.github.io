module View exposing (renderRoute, view)

import Browser
import Education.View
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Events exposing (..)
import Element.Font as Font
import Element.Region exposing (..)
import GroupProjects.View
import Hackathons.View
import Layout exposing (..)
import PersonalProjects.View
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

        PersonalProjectsPage ->
            Element.map MsgForPersonalProjects (PersonalProjects.View.view model.personalprojects)

        GroupProjectsPage ->
            Element.map MsgForGroupProjects (GroupProjects.View.view model.groupprojects)

        EducationPage ->
            Element.map MsgForEducation (Education.View.view model.education)

        HackathonsPage ->
            Element.map MsgForHackathons (Hackathons.View.view model.hackathons)


homePageView =
    Layout.layout "About Myself" content


content =
    column [ width fill, spacingXY 0 40 ]
        [ row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 40, width fill ]
                [ paragraph [ width fill, Font.alignLeft, Font.size 20 ] [ text " Independent Imaginative Intelligent " ]
                , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "I am an eager learner and self-motivated person who knows no restrictions when it comes to achieving desired goals." ]
                , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "I am passionate about computer science and software development. I believe that if technology can be used to become famous merely by just posting a random picture, then we can certainly use it to make much more important topics famous and visible to the world - for example, ", text "Climate Change, Art and Culture, etc." ]
                , column [ width fill, spacingXY 0 10 ]
                    [ paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "1) I am working on this project where a user will be able to gain points upon planting a tree. Upon gaining a certain number of points, they will be able to become a youth sensation and receive donations from others to help them continue their journey." ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "2) I am also working on another social media platform to promote creative linguistic skills. Here, users will be able to post poems, shayari, short stories, etc." ]
                    ]
                ]
            , column [ width fill, padding 20 ]
                [ image [ centerY, centerX, width <| maximum 200 fill, height <| maximum 400 fill, Border.rounded 10 ]
                    { src = "images/profile-pic.jpg"
                    , description = "Taqdeer Grewal"
                    }
                ]
            ]
        ]
