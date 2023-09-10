//
//  Selection0.swift
//  SoMo
//
//  Created by George Hargreaves on 09/09/2023.
//

import SwiftUI

struct Selection0: View {
    
    @State var selectedIndex:Int?
    
    var body: some View {
        
        NavigationView{
            
            ZStack {
                
                Color.mint
                    .ignoresSafeArea()
                
                VStack{
                    
                    Spacer()
                    
                    Image(systemName: "graduationcap")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(40)
                    
                    Text("Welcome to SoMo")
                        .font(.title)
                        .bold()
                        .padding(10)
                    
                    Text("Guiding you future")
                    
                    Spacer()
                    
                    NavigationLink(destination:
                                    Selection1(selectedIndex: selectedIndex),
                                   tag: 1,
                                   selection: $selectedIndex,
                                   label: {
                        ZStack {
                            
                            RectangleCard(color: Color.blue)
                                .frame(width: 150, height:50)
                                .shadow(radius: 15)
                            
                            Text("Next")
                                .foregroundColor(Color.white)
                        }
                        
                    })
                }
            }
        }
    }
}

struct Selection0_Previews: PreviewProvider {
    static var previews: some View {
        Selection0()
    }
}
