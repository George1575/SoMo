//
//  SubjectView.swift
//  SoMo
//
//  Created by George Hargreaves on 07/09/2023.
//

import SwiftUI

struct SubjectView: View {
    
    @State var subjects = [Subject]()
    var dataService = DataService()
    var level: Level
    
    var body: some View {
        
            ScrollView {
                
                VStack {
                    
                    ForEach(level.subjects) { subject in
                        
                        NavigationLink {
                            DetailView(subject: subject )
                        } label: {
                            SubjectRow(subject: subject)
                                .padding(.bottom, 50)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .padding()
        }
    }
