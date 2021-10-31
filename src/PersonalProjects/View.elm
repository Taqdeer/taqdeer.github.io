module PersonalProjects.View exposing (..)

import Element exposing (..)
import Element.Font as Font
import Layout exposing (..)
import PersonalProjects.Types exposing (..)
import Styles exposing (..)


view : Model -> Element Msg
view model =
    Layout.layout "Personal Projects" content


content =
    column [ width fill, spacingXY 0 40 ]
        [ row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 10, width fill ]
                [ row [ Font.bold, alignLeft ] [ text "Farmers' Market" ]
                , row [ alignLeft ] [ text "Python, jQuery, React, C, NodeJS, Assembly" ]
                , column [ alignLeft, width fill, spacingXY 0 20 ]
                    [ paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "The project is an interface for farmers’ and MNCs to establish fair deals of buying/selling crops without the involvement of third parties." ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "The project supports two types of accounts – a famer’s account to list all the crops he wants to sell and a MNC account in which the user can find the type of crops one wants to buy. MNC user can select the farmer from the list of farmers who are selling the specified crop and get their contact info. " ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "Designed in Java, project also supports saving and restoring the data on local machine in JSON format. UML (Unified modeling language) and Object-Oriented principles have been used while implementation. " ]
                    ]
                ]
            ]
        , row [ alignLeft, width fill ]
            [ column [ alignLeft, spacing 10, width fill ]
                [ row [ Font.bold, alignLeft ] [ text "Score" ]
                , row [ alignLeft ] [ text "SQL, MongoDB, Oracle" ]
                , column [ alignLeft, width fill, spacingXY 0 20 ]
                    [ paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "Designed for one player, project is an interactive game which can run on any search engine. It has been inspired from the classic game named Dangerous Dave" ]
                    , paragraph [ width fill, Font.alignLeft, Font.size 15 ] [ text "The game has been written in plain JavaScript using objects and functions. It uses event driven functionality of JavaScript and has been embedded in HTML5" ]
                    ]
                ]
            ]
        ]
