//
//  Subject.swift
//  SoMo
//
//  Created by George Hargreaves on 07/09/2023.
//

import Foundation

struct Subject: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    
    //level will be at the beginning, you will need information on questions to drill down into
    
}
