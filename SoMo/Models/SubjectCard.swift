//
//  SubjectCard.swift
//  SoMo
//
//  Created by George Hargreaves on 07/09/2023.
//

import SwiftUI

struct SubjectCard: View {
    
    var level: Level
    
    var body: some View {
        
        ZStack{
            
            Image(level.imageName)
                .resizable()
                .cornerRadius(15)
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            VStack (alignment: .leading) {
                Text(level.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                
                Spacer()
                
                Text(level.name)
            }
            .padding()
            .foregroundColor(.white)
        }
        




    }
}

struct SubjectCard_Previews: PreviewProvider {
    static var previews: some View {
        SubjectCard(level: Level(name: "Apprenticeships", summary: "Truro and Penwith College offers quality apprenticeship programmes in 30 exciting job roles in partnership with Cornwall's top employers. Our continually expanding range of training is designed in partnership with employers to address the skills needed and career routes available at local businesses.", imageName: "apprenticeships", subjects: [Subject]()))
    }
}
