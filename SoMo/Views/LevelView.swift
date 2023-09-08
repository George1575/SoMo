//
//  ContentView.swift
//  SoMo
//
//  Created by George Hargreaves on 06/09/2023.
//

import SwiftUI

struct LevelView: View {
    
    @State var levels = [Level]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                VStack {
                    
                    ForEach(levels) { level in
                        
                        NavigationLink {
                            SubjectView(level: level)
                        } label: {
                            SubjectCard(level: level)

                        }

                        
                        
                    }
                }
            }
            .padding()
        }
        
        
        .onAppear {
            levels = dataService.getData()
        }
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView()
    }
}
