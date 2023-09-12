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
    @Binding var interestedSubjects: SubjectSelection?
    @Binding var isOnboardingComplete: Bool
  
    
    @State private var showSecondQuestion = false
    @State private var showThirdQuestion = false
    
    var body: some View {
        
        ZStack{
            
            RadialGradient(
                gradient: Gradient(colors: [Color.cyan, Color.blue,]),
                center: .center,
                startRadius: 5,
                endRadius: 500)
            .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                if showThirdQuestion {
                    
                    Text("What subjects are you interested in?")
                        .font(.largeTitle)
                        
                        ForEach(SubjectSelection.allCases, id: \.self) { subject in
                            CustomButton(title: subject.rawValue){
                                interestedSubjects = subject
                                isOnboardingComplete = true
                            }
                        }
                    
                }
                else if showSecondQuestion {
                        Spacer()
                        
                        Text("What education level are you currently in?")
                            .font(.largeTitle)
                        
                        Spacer()
                        
                        ForEach(InterestedEducation.allCases, id: \.self) { type in
                            CustomButton(title: type.rawValue) {
                                interestedEducation = type
                                showThirdQuestion = true

                            }
                        }
                    } else {
                        Spacer()
                        
                        Text("Which level would you like to know more about?")
                            .font(.largeTitle)
                        
                        Spacer()
                        
                        
                        ForEach(EducationLevel.allCases, id: \.self) { level in
                            CustomButton(title: level.rawValue) {
                                educationLevel = level
                                showSecondQuestion = true

                            }
                        }
                    }
                }
                
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


