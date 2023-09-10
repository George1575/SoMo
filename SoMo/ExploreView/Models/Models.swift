//
//  Models.swift
//  SoMo
//
//  Created by George Hargreaves on 10/09/2023.
//

import Foundation

struct level: Decodable, Identifiable {
    
    var id: Int
    var image: String
    var summary: String
    var description: String
    
}

struct student {
    
    var currentLevel: String
    var futureLevel: String
    var subject: String
    
    
}
