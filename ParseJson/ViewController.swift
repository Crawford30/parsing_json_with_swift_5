//
//  ViewController.swift
//  ParseJson
//
//  Created by JOEL CRAWFORD on 2/3/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // calling the function
        NetworkManager.downloadPlayerProfile { jsondata in
            //check if there is data
            guard let jData = jsondata else { return } //return nil if there is nothing
            do {
                //=====otherwise do this(parse the object)====
                if let json  = try JSONSerialization.jsonObject(with: jData, options: []) as? [String: Any] {
                    //=====getting first name=
                    if let FirstName = json["first_name"] as? String {
                        print(FirstName)
                    }
                    //==========achievements, its an array of dictionary===
                    if let achievements = json["achievements"] as? Array<Dictionary<String, String>> {
                        for achievement in achievements {
                            print(achievement["title"] ?? "n/a" )
                             print(achievement["info"] ?? "n/a" )
                        }
                    }
                    //===working on the rank===
                    if let rank = json["rank"] as? Int {
                        print(rank)
                    }
                    //=====working on friends=====
                    if let friends = json["friends"] as? Array<Dictionary<String,Any>> {
                        //=====now looping in the array===
                        for friend in friends {
                            //====getting handle===
                            if let handle = friend["handle"] as? String {
                                print(handle)
                            }
                            //======getting dates_logged_in
                            if let dates = friend["dates_logged_in"] as? Array<String> {
                                
                                //====looping in it===
                                for rawDate in dates {
                                    let formatterInput = ISO8601DateFormatter()
                                    if let date = formatterInput.date(from: rawDate) {
                                        //===creating new formater
                                        let formaterOutput = DateFormatter()
                                        formaterOutput.locale = Locale(identifier: "en-US") //UK format is en_GB
                                        formaterOutput.dateStyle = .short
                                        print(formaterOutput.string(from: date))
                                        
                                    }
                                    
                                }
                                
                            }
                        }
                    }
                    
                    
                }
            } catch let err {
                print(err.localizedDescription)
            }
            
        }
    }


}

