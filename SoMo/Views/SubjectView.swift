//
//  SubjectView.swift
//  SoMo
//
//  Created by George Hargreaves on 07/09/2023.
//

import SwiftUI

struct SubjectView: View {
    
    var level: Level
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                ForEach(level.subjects) { subject in
                    
                    NavigationLink {
                        DetailView(subject: subject )
                    } label: {
                        Text(subject.name)

                    }

                    
                }
            }
            
        }
        
        
    }
}

struct SubjectView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectView(level: Level(name: "Apprenticeships",
                    summary: "Truro and Penwith College offers quality apprenticeship programmes in 30 exciting job roles in partnership with Cornwall's top employers. Our continually expanding range of training is designed in partnership with employers to address the skills needed and career routes available at local businesses.",
                    imageName: "apprenticeships",
                    subjects: [
                            Subject(name: "Marketing Assistant L3",
                                summary: "This Apprenticeship will provide a thorough, in-depth introduction to both traditional and digital marketing, and will give Apprentices the relevant experience they need to get started in the industry and gain permanent employment within any area of Marketing and Communications.",
                                longDescription: """
                                      Recognised by the Chartered Institute of Marketing (CIM), the Level 3 Marketing Assistant Apprenticeship gives learners a thorough grounding in digital and traditional marketing. The programme provides both a well-recognised qualification and the experience needed to succeed in roles such as Marketing Assistant, Marketing Coordinator or Social Media Manager. Taught by the College’s industry-expert tutors, with current experience in the sector, Level 3 Marketing Assistant Apprentices gain the knowledge, competence, and confidence to contribute to the marketing activities of the business they work for, making a real difference to business success and developing their own skills along the way.
                                      """,
                                imageName: "apprenticeship")
                            ]))
    }
}
