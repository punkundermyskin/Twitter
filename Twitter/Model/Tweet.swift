//
//  Tweet.swift
//  Twitter
//
//  Created by pennyworth on 8/25/19.
//  Copyright © 2019 punkundermyskin. All rights reserved.
//

import SwiftyJSON

struct Tweet {
    let user: User
    let message: String
    
    init(json: JSON) {
        let userJson = json["user"]
        self.user = User(json: userJson)
        
        self.message = json["message"].stringValue
    }
}

