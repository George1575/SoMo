//
//  EducationLevelView.swift
//  SoMo
//
//  Created by George Hargreaves on 10/09/2023.
//

import SwiftUI

struct CustomHomeView: View {
    
    @State var educationLevel: EducationLevel?
    @State var interestedEducation: InterestedEducation?
    @State var interestedSubjects: SubjectSelection?
    @State var isOnboardingComplete = true

    var body: some View {
        
        if isOnboardingComplete {
            VStack{
                
                Text("You have completed onboarding! Here is some information about: \(interestedEducation?.rawValue ?? "Unknown"),\(interestedSubjects?.rawValue ?? "Unknown")")
                    .font(.title)
                    .bold()
                    .padding()
                
                Spacer()
            }

            // Go to the main app or show the selected options
        } else {
            Text("Onboarding failed")
            
        }
    }
    
    
    
    struct CustomHomeView_Previews: PreviewProvider {
        static var previews: some View {
            CustomHomeView()
        }
    }
}
