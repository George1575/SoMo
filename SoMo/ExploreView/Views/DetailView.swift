//
//  DetailView.swift
//  SoMo
//
//  Created by George Hargreaves on 07/09/2023.
//

import SwiftUI

struct DetailView: View {
    
    var subject: Subject
    var dataService = DataService()
    
    var body: some View {
        
        VStack {
            
            Image(subject.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .cornerRadius(15)
            
            ScrollView {
    //            Image(subject.imageName)
    //                .resizable()
                Text(subject.name)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text(subject.longDescription)
                    .padding(30)
            }

        }
        
        
    }
}
