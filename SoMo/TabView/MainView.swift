//
//  MainView.swift
//  SoMo
//
//  Created by George Hargreaves on 08/09/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {

        TabView{
            
            CustomHomeView()
                .tabItem{
                    VStack{
                        Image(systemName: "menucard")
                        Text("Menu")
                    }
                }
            
            LevelView()
                .tabItem{
                    VStack{
                        Image(systemName: "info.circle")
                        Text("Explore")
                    }
                }
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
