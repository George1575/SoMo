//
//  Selection1.swift
//  SoMo
//
//  Created by George Hargreaves on 09/09/2023.
//

import SwiftUI

struct Selection1: View {
    
    @State var selectedIndex:Int?
    @State var educationLevel: EducationLevel?
    @State var interestedEducation: InterestedEducation?
    @State var interestedSubjects: SubjectSelection?
    @State var isOnboardingComplete = false
    @State var showThirdQuestion = false

    var body: some View {
        
        if isOnboardingComplete {
            CustomHomeView(educationLevel: educationLevel, interestedEducation: interestedEducation, interestedSubjects: interestedSubjects)

            
        } else {
            EducationLevelView(educationLevel: $educationLevel,
                               interestedEducation: $interestedEducation,
                               interestedSubjects: $interestedSubjects,
                               isOnboardingComplete: $isOnboardingComplete)
            
        }
    }
}


enum EducationLevel: String, CaseIterable {
    case GCSE = "GCSE"
    case alevels = "A levels"
    case tlevels = "T levels"
    case vocational = "Vocational"
    case apprenticeship = "Apprenticeship"
}

enum InterestedEducation: String, CaseIterable {
    case bachelors = "Bachelor's Degree"
    case foundational = "Foundational Degree"
    case alevel = "A levels"
    case tlevels = "T levels"
    case vocational = "Vocational"
    case apprenticeship = "Apprenticeship"
}

enum SubjectSelection: String, CaseIterable {
    case math = "Math"
    case science = "Science"
    case history = "History"
    case biology = "Biology"
    case economics = "Economics"
    case physics = "Physics"
    case chemistry = "Chemistry"
    // ... add other subjects as needed
    

}



