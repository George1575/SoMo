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
    func getFileData() -> [Level] {
        
        //Step 1 - we need to get file path to demodata.json
        if let url = Bundle.main.url(forResource: "JSON", withExtension: "json") {
            
            do {
                //Turn read the file and turn it into data
                //there could easily be an error thrown, this means it will alert you instead of failing silently
                let data = try Data(contentsOf: url)
                
                //Parse data into swift instances
                let decoder = JSONDecoder()
                
                do {
                    let cities = try decoder.decode([Level].self, from: data)
                    return cities
                }
                catch {
                    print("coudl'nt parse the JSON: \(error)")
                }
            }
            catch {
                print("Couldn't read the file: \(error)")
            }
        }
        return [Level]()
    }
}
