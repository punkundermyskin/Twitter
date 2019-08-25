//
//  Service.swift
//  Twitter
//
//  Created by pennyworth on 8/25/19.
//  Copyright © 2019 punkundermyskin. All rights reserved.
//

import TRON
import SwiftyJSON

struct Service {
    
    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    
    static let sharedInstance = Service()
    
    func fetchHomeFeed(completion: @escaping (HomeDatasource?, Error?) -> ()) {
        
        let request: APIRequest<HomeDatasource, JSONError> = tron.swiftyJSON.request("/twitter/home")
        
        request.perform(withSuccess: { (homeDatasource) in
            completion(homeDatasource, nil)
        }) { (err) in
            
            completion(nil, err)
            print ("Failed to fetch json...", err)
        }
    }
    
    class JSONError: JSONDecodable {
        required init(json: JSON) throws {
            print ("JSON ERROR")
        }
    }
    
}
