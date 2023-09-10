//
//  EducationLevelView.swift
//  SoMo
//
//  Created by George Hargreaves on 10/09/2023.
//

import SwiftUI

struct CustomHomeView: View {
    var educationLevel: EducationLevel?
    var interestedEducation: InterestedEducation?

    var body: some View {
        VStack {
            Text("Your prior education level is \(educationLevel?.rawValue ?? "Unknown")")
            Text("You're interested in \(interestedEducation?.rawValue ?? "Unknown")")
        }
    }
}


struct CustomHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomHomeView()
    }
}
