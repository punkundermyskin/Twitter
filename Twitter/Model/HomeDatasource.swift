//
//  HomeDatasource.swift
//  Twitter
//
//  Created by pennyworth on 8/25/19.
//  Copyright © 2019 punkundermyskin. All rights reserved.
//

import LBTAComponents
import TRON
import SwiftyJSON

class HomeDatasource: Datasource, JSONDecodable {
    
    let users: [User]
    
    required init(json: JSON) throws {
        
        let userJsonArray = json["users"].array
        
        self.users = userJsonArray!.map{User(json: $0)}
        
        let tweetsJsonArray = json["tweets"].array
        self.tweets = tweetsJsonArray!.map{Tweet(json: $0)}
    }
    
    let tweets: [Tweet]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
}
