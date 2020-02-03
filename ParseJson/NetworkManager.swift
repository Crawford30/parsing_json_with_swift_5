//
//  NetworkManager.swift
//  ParseJson
//
//  Created by JOEL CRAWFORD on 2/3/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import Foundation

let parseJson =  """
{
    "first_name": "John",
    "last_name": "Joel",

    "achievements": [{
            "title": "defender",
            "info": "great"
        },

        {
            "title": "Striker",
            "info": "Great player"
        },

        {
            "title": "keeper",
            "info": "great"

        }

    ],

    "rank": 1234,

    "friends": [{
            "handle": "buggyboy",
            "dates_logged_in": [
                "12-12-1233",
                "21-23-1555",
                "15-07-1234"
            ]
        }

    ]

}
"""




class NetworkManager {
    static func downloadPlayerProfile(completion:((_ json: Data?) -> Void )) {
        //=====take the string a put it in the data object======can be done by URLSession===
        completion(Data(parseJson.utf8))
    }
    
}
