//
//  NetworkManager.swift
//  ParseJson
//
//  Created by JOEL CRAWFORD on 2/3/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import Foundation


//"""
//["message": User register successfully., "success": 1,


//
//let parseJson = """
//{
//    "role" = "provider";
//    "token" = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImNkN2NiMjJmZTQ3ZWI2YzdiOTY3NGU1ZWZmZGJmODNiZmVmNjY1Yzg0ZTkxZTY5YmRlOGUyYTAxMGU1NjI0Mjk2MTU4ZDlkMGQ5YzFiYTFkIn0.eyJhdWQiOiIzIiwianRpIjoiY2Q3Y2IyMmZlNDdlYjZjN2I5Njc0ZTVlZmZkYmY4M2JmZWY2NjVjODRlOTFlNjliZGU4ZTJhMDEwZTU2MjQyOTYxNThkOWQwZDljMWJhMWQiLCJpYXQiOjE1ODA3MTM0MzksIm5iZiI6MTU4MDcxMzQzOSwiZXhwIjoxNjEyMzM1ODM5LCJzdWIiOiIyNDc4Iiwic2NvcGVzIjpbXX0.EYa9lp-lue_DuqrTKLWPLxcmxTmjPFq2S4P8yQn0oJWqaZUbg795Gy_DpD8R-fdE_vW8IyP2PAtNllzVxrqrqFhi0YTRwLz9YfEh2CuJwRGjohcSrtZzIRHfQcalUdB8CrDCGMzbhrYXCw7SObhZz446ZzKs4LAClqytBkVsuGfuoHGtNglB8tIDsQicB0DhIR9nu9AuUUegsNYVmSU5SNypjBLYRct0oKRgHnHIBjzRwBBTUcOTCZkpEFeaDvikelNfv0eZZU3F4BqtVUfAADlnLzj6dkVE-3793akpDz0os6zv0bm9MeDYGrwVyZP9xGVSPuhnIOBBDB4R2oOKTSnHjxpp4AjSZVGqb3EpkS_lm_clrCZdBcpUicKGRAS9XRWWk83W0xFTs2dJWlUYpalKDENBQuhlgyfkxYBdPPzrKPZxJaozKwFdftTPMNu3DUGrWpt01UfaOkJtR7_ccaqX5mXuhjd_pEXYKZbvWbs4vIGljA63hXHCMGGfH5bCoD3DZg2Klp5xwCOXq0dxlIBUFMYcJ7O4SjM6yjP_aIvujNbx1eVR7tbggvNXp2umkm9b9X2gFOd-cn1gDZzIbKq-AoovXE2QXzcYJYT-R922EC14PgvFZCRagY5RoTBLJyqws9Na2cNgd5wChX0-x_YwDbdVpOW1zfo7K8NfLo0",
//
//    user =     {
//        address = ",   Pasar Manggis,   Indonesia";
//        email = "oketajames@gmail.com";
//        id = 2478;
//        name = "Oketa James";
//        phone = 256712345678;
//        username = OketaJames;
//    },
//
//}]
//"""


//let passjson = """
//{
//"first_name": "John",
//"last_name": "Joel",
//"achievements":
//[
//"title": "defender",
//"info": "great"
//},
//{
//"title": "Striker",
//"info": "Great player"
//},
//{
//"title": "keeper",
//"info": "great"
//} ],
//"rank": 1234,
//friends: [
//{
//"handle": "buggyboy",
//"dates_logged_in": [
//"12-12-1233",
//"21-23-1555",
//"15-07-1234"
//]
//}
//]
//
////}
////"""


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



//let parseJson = """
//{
//    "users": [{
//            "id": 0,
//            "name": "Adam Carter",
//            "work": "Unilogic",
//            "email": "adam.carter@unilogic.com",
//            "dob": "1978",
//            "address": "83 Warner Street",
//            "city": "Boston",
//            "optedin": true
//        },
//        {
//            "id": 1,
//            "name": "Leanne Brier",
//            "work": "Connic",
//            "email": "leanne.brier@connic.org",
//            "dob": "13/05/1987",
//            "address": "9 Coleman Avenue",
//            "city": "Toronto",
//            "optedin": false
//        }
//    ],
//    "images": [
//        "img0.png",
//        "img1.png",
//        "img2.png"
//    ],
//    "coordinates": {
//        "x": 35.12,
//        "y": -21.49
//    },
//    "price": "$59,395"
//}
//"""
class NetworkManager {
    static func downloadPlayerProfile(completion:((_ json: Data?) -> Void )) {
        //=====take the string a put it in the data object======can be done by URLSession===
        completion(Data(parseJson.utf8))
    }
    
}
