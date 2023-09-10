//
//  ContentModel.swift
//  SoMo
//
//  Created by George Hargreaves on 06/09/2023.
//

import Foundation

class ContentModel: ObservableObject {
    
    //this will keep track of the question we are looking at
    
    //this is looking at the level selected, and the corrosponding int value from the json file
    @Published var levels = [Level]()
    
    @Published var levelSelected:Int?
    
    @Published var modules = [Level]()
    
    var styleData: Data?

    
    init() {
        getLocalData()
    }
    
    func getLocalData() {
        
        // Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            // Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            // Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let levels = try jsonDecoder.decode([Level].self, from: jsonData)
            
            // Assign parsed modules to modules property
            self.levels = levels
        }
        catch {
            // TODO log error
            print("Couldn't parse local data")
        }
        
        // Parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            
            // Read the file into a data object
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
        }
        catch {
            // Log error
            print("Couldn't parse style data")
        }
        
    }
}
