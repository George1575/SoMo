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
    @State var isOnboardingComplete = false

    var body: some View {
        
        if isOnboardingComplete {
            CustomHomeView(educationLevel: educationLevel, interestedEducation: interestedEducation)
        } else {
            EducationLevelView(educationLevel: $educationLevel, interestedEducation: $interestedEducation, isOnboardingComplete: $isOnboardingComplete)
        }
    }
}

struct YourAppEntry: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

enum EducationLevel: String, CaseIterable {
    case GCSE = "GCSE"
    case alevels = "A levels"
    case tlevels = "T levels"
    case vocational = "Vocational"
    case apprenticeship = "Apprenticeship"
    case other = "Other"
}

enum InterestedEducation: String, CaseIterable {
    case bachelors = "Bachelor's Degree"
    case foundational = "Foundational Degree"
    case alevel = "A levels"
    case tlevels = "T levels"
    case vocational = "Vocational"
    case apprenticeship = "Apprenticeship"
    case other = "Other"
}




