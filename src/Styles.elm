module Styles exposing (button, colors, fontStyles, title)

import Element exposing (..)
import Element.Background as Background
import Element.Font as Font


title : List (Attr decorative msg)
title =
    [ Font.color (rgb 0 0 0)
    , Font.size 40
    ]


button : List (Attr decorative msg)
button =
    [ Background.color (rgb 0.9 0.9 0.9)
    ]


colors =
    { blue = rgb255 16 33 46
    , white = rgb255 224 224 224
    , gray = rgb255 160 160 160
    }


fontStyles =
    { standard =
        [ Font.family
            [ Font.external
                { name = "Rubik"
                , url = "https://fonts.googleapis.com/css2?family=Rubik:wght@300&display=swap"
                }
            , Font.sansSerif
            ]
        ]
    }
