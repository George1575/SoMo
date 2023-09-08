//
//  DetailView.swift
//  SoMo
//
//  Created by George Hargreaves on 07/09/2023.
//

import SwiftUI

struct DetailView: View {
    
    var subject: Subject
    
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

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(subject: Subject(name: "Marketing Assistant L3",
                                       summary: "This Apprenticeship will provide a thorough, in-depth introduction to both traditional and digital marketing, and will give Apprentices the relevant experience they need to get started in the industry and gain permanent employment within any area of Marketing and Communications.",
                                       longDescription: """
                                             Recognised by the Chartered Institute of Marketing (CIM), the Level 3 Marketing Assistant Apprenticeship gives learners a thorough grounding in digital and traditional marketing. The programme provides both a well-recognised qualification and the experience needed to succeed in roles such as Marketing Assistant, Marketing Coordinator or Social Media Manager. Taught by the College’s industry-expert tutors, with current experience in the sector, Level 3 Marketing Assistant Apprentices gain the knowledge, competence, and confidence to contribute to the marketing activities of the business they work for, making a real difference to business success and developing their own skills along the way.
                                             """,
                                    imageName: "apprenticeship"
                                            ))
    }
}
