//
//  SubjectRow.swift
//  SoMo
//
//  Created by George Hargreaves on 08/09/2023.
//

import SwiftUI

struct SubjectRow: View {
    
    var subject: Subject
    
    var body: some View {
        
        VStack{
            
            Image(subject.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 120)
                .cornerRadius(15)
            
            Text(subject.name)
                .bold()
                .font(.largeTitle)
                
            
            Text(subject.summary)
                .multilineTextAlignment(.leading)
            
            
        }
        .padding(10)
    }
}

struct SubjectRow_Previews: PreviewProvider {
    static var previews: some View {
        SubjectRow(subject: Subject(name: "Biology",
                                      summary: "Choose this course if you enjoy learning about life and living organisms and want to delve deeper into concepts that you have been introduced to at GCSE, from biochemistry and cell biology through to behaviour and ecology.",
                                      longDescription: """
        "A Level Biology will offer you an exciting, challenging and stimulating area of study. Biology encompasses the cellular basis of living things, the transformation of energy that underlies the activities of life, and the genetic basis for inheritance in organisms. You will study the evolutionary relationships between organisms and the diversity of life on earth, to include microorganisms, plants, and animals. The structural and functional relationships studied in biology draw on the sciences of chemistry and physics for its foundations and applies the laws of these disciplines to living things. You will learn about advanced biology concepts and put these into practice through a wide variety of practical experiments.
        
        This will enable you to gain and develop the skills necessary to study biology or other sciences further as well as equipping you with a range of transferrable skills applicable to a number of subjects and careers.
        """,
                                      imageName: "biology"))
    }
}
