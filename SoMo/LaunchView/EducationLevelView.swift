//
//  EducationalLevelView.swift
//  CustomHomeView
//
//  Created by George Hargreaves on 10/09/2023.
//

import SwiftUI

struct EducationLevelView: View {
    @Binding var educationLevel: EducationLevel?
    @Binding var interestedEducation: InterestedEducation?
    @Binding var isOnboardingComplete: Bool
    @State private var showSecondQuestion = false
    
    var body: some View {
        
        ZStack{
            
            RadialGradient(
                gradient: Gradient(colors: [Color.cyan, Color.blue,]),
                center: .center,
                startRadius: 5,
                endRadius: 500)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                if showSecondQuestion {
                    Spacer()

                    Text("What education level are you curerntly in?")
                        .font(.headline)
                        .bold()
                    
                    Spacer()

                    ForEach(InterestedEducation.allCases, id: \.self) { type in
                        CustomButton(title: type.rawValue) {
                            interestedEducation = type
                            isOnboardingComplete = true
                        }
                    }
                } else {
                    Spacer()

                    Text("Which education level would you like to know more about?")
                        .font(.headline)
                        .bold()
                    
                    Spacer()

                    
                    ForEach(EducationLevel.allCases, id: \.self) { level in
                        CustomButton(title: level.rawValue) {
                            educationLevel = level
                            showSecondQuestion = true
                        }
                    }
                }
            }
            .padding() // Added for a bit of space around
            
        }
    }
}

struct CustomButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .frame(width: 270, height: 60)
                .background(Color.gray)
                .foregroundColor(.black)
                .cornerRadius(15)
                .shadow(radius: 20)
        }
        .padding(.bottom, 8) // Add space between buttons
    }
}


